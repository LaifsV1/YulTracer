(** Exceptions
    @author Yu-Yang Lin
    created: 05-Apr-2024

    Based on the Ethereum Execution Specs:
    {:https://github.com/ethereum/execution-specs/blob/master/src/ethereum/exceptions.py}

 *)

module Exception = struct
  type t = EthereumException     (* Exception *)
         | InvalidBlock          (* EthereumException *)
         | RLPDecodingError      (* InvalidBlock *)
         | RLPEncodingError      (* InvalidBlock *)
         | ExceptionalHalt       (* EthereumException *)
         | Revert                (* EthereumException *)
         | StackUnderflowError   (* ExceptionalHalt *)
         | StackOverflowError    (* ExceptionalHalt *)
         | OutOfGasError         (* ExceptionalHalt *)
         | InvalidOpcode         (* ExceptionalHalt *)
         | InvalidJumpDestError  (* ExceptionalHalt *)
         | StackDepthLimitError  (* ExceptionalHalt *)
         | WriteInStaticContext  (* ExceptionalHalt *)
         | OutOfBoundsRead       (* ExceptionalHalt *)
         | InvalidParameter      (* ExceptionalHalt *)
         | InvalidContractPrefix (* ExceptionalHalt *)
end

exception EVMError of Exception.t
  
(** Doing [ensure] here instead of in a separate utility class:
def ensure(
    value: bool, exception: Union[Type[BaseException], BaseException]
) -> None:
    """
    Does nothing if `value` is truthy, otherwise raises the exception returned
    by `exception_class`.

    Parameters
    ----------

    value :
        Value that should be true.

    exception :
        Constructor for the exception to raise.
    """
    if value:
        return
    raise exception
 *)
let ensure (value : bool) (e : Exception.t) =
  if not(value) then raise (EVMError e)
