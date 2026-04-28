from typing import List

_MASK64 = (1 << 64) - 1

_ROT = [
    [0, 36, 3, 41, 18],
    [1, 44, 10, 45, 2],
    [62, 6, 43, 15, 61],
    [28, 55, 25, 21, 56],
    [27, 20, 39, 8, 14],
]

_RC = [
    0x0000000000000001,
    0x0000000000008082,
    0x800000000000808A,
    0x8000000080008000,
    0x000000000000808B,
    0x0000000080000001,
    0x8000000080008081,
    0x8000000000008009,
    0x000000000000008A,
    0x0000000000000088,
    0x0000000080008009,
    0x000000008000000A,
    0x000000008000808B,
    0x800000000000008B,
    0x8000000000008089,
    0x8000000000008003,
    0x8000000000008002,
    0x8000000000000080,
    0x000000000000800A,
    0x800000008000000A,
    0x8000000080008081,
    0x8000000000008080,
    0x0000000080000001,
    0x8000000080008008,
]


def _rol64(x: int, n: int) -> int:
    if n == 0:
        return x
    return ((x << n) | (x >> (64 - n))) & _MASK64


def _keccak_f1600(state: List[int]) -> None:
    for rc in _RC:
        # Theta
        c = [
            state[x] ^ state[x + 5] ^ state[x + 10] ^ state[x + 15] ^ state[x + 20]
            for x in range(5)
        ]
        d = [c[(x - 1) % 5] ^ _rol64(c[(x + 1) % 5], 1) for x in range(5)]
        for x in range(5):
            for y in range(5):
                state[x + 5 * y] ^= d[x]

        # Rho + Pi
        b = [0] * 25
        for x in range(5):
            for y in range(5):
                b[y + 5 * ((2 * x + 3 * y) % 5)] = _rol64(
                    state[x + 5 * y], _ROT[x][y]
                )

        # Chi
        for x in range(5):
            for y in range(5):
                state[x + 5 * y] = (
                    b[x + 5 * y]
                    ^ ((~b[(x + 1) % 5 + 5 * y]) & b[(x + 2) % 5 + 5 * y])
                ) & _MASK64

        # Iota
        state[0] ^= rc


def keccak256(data: bytes) -> bytes:
    rate_bytes = 136
    output_len = 32

    state = [0] * 25

    # Correct Keccak padding
    padded = bytearray(data)
    padlen = rate_bytes - (len(padded) % rate_bytes)
    padded.extend(b"\x00" * padlen)
    padded[len(data)] ^= 0x01
    padded[-1] ^= 0x80

    # Absorb
    for off in range(0, len(padded), rate_bytes):
        block = padded[off:off + rate_bytes]
        for i, byte in enumerate(block):
            state[i // 8] ^= byte << (8 * (i % 8))
        _keccak_f1600(state)

    # Squeeze
    out = bytearray()
    while len(out) < output_len:
        for lane in state[: rate_bytes // 8]:
            out.extend(lane.to_bytes(8, "little"))
            if len(out) >= output_len:
                return bytes(out[:output_len])
        _keccak_f1600(state)

    return bytes(out[:output_len])


def keccak256_hex(data: bytes) -> str:
    return keccak256(data).hex()


if __name__ == "__main__":
    print(keccak256_hex(b""))      # c5d246...5d85a470
    print(keccak256_hex(b"abc"))   # 4e0365...a12d6c45
