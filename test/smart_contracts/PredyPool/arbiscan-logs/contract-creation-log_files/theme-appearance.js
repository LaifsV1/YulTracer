/*!
* Color mode toggler for Bootstrap's docs (https://getbootstrap.com/)
* Copyright 2011-2022 The Bootstrap Authors
* Licensed under the Creative Commons Attribution 3.0 Unported License.
*/

const storedTheme = localStorage.getItem('theme')

const getPreferredTheme = (isOnload = false) => {
    if (storedTheme) {
        return storedTheme
    }

    if (isOnload) {
        return 'light';
    }

    return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
}

const setTheme = function (theme, isChangeFavicon = false) {
    if (isChangeFavicon) {
        let favicon = document.querySelector('link[rel="shortcut icon"]');
        if (window.matchMedia('(prefers-color-scheme: dark)').matches && !favicon.href.includes('light')) {
            favicon.href = favicon.href.replace('favicon', 'favicon-light');
        } else {
            favicon.href = favicon.href.replace('favicon-light', 'favicon');
        }
    }

    //if (theme === 'auto' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
    //    document.documentElement.setAttribute('data-bs-theme', 'dark')
    //} else {
    //    document.documentElement.setAttribute('data-bs-theme', theme)
    //}

    document.documentElement.setAttribute('data-bs-theme', theme)

    handleThemeBtn(theme);
}

//setTheme(getPreferredTheme())
setTheme(getPreferredTheme(true), true)

//const showActiveTheme = theme => {
//    const activeThemeIcon = document.querySelector('.theme-icon-active')
//    const btnToActive = document.querySelector(`[data-bs-theme-value="${theme}"]`)
//    const svgOfActiveBtn = btnToActive.querySelector('i').getAttribute('data-href')

//    document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
//        element.classList.remove('active')
//    })

//    btnToActive.classList.add('active')
//    activeThemeIcon.setAttribute('data-href', svgOfActiveBtn)

//    handleThemeBtn(theme);
//}

const showActiveTheme = theme => {
    const activeThemeIcon = document.querySelector('.theme-icon-active')
    const btnToActive = document.querySelector(`[data-bs-theme-value="${theme}"]`)

    if (btnToActive) {
        const svgOfActiveBtn = btnToActive.querySelector('i').getAttribute('data-href')

        document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
            element.classList.remove('active')
        })

        btnToActive.classList.add('active')
        activeThemeIcon.classList.remove(activeThemeIcon.getAttribute('data-href').slice(1))
        activeThemeIcon.classList.add(svgOfActiveBtn.slice(1))
        activeThemeIcon.setAttribute('data-href', svgOfActiveBtn)
    }

    handleThemeBtn(theme);
}

window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
    if (storedTheme !== 'light' || storedTheme !== 'dark') {
        setTheme(getPreferredTheme(), true)
    }
})

window.addEventListener('DOMContentLoaded', () => {
    //showActiveTheme(getPreferredTheme())
    showActiveTheme(getPreferredTheme(true))

    document.querySelectorAll('[data-bs-theme-value]')
        .forEach(toggle => {
            toggle.addEventListener('click', () => {
                const theme = toggle.getAttribute('data-bs-theme-value')
                localStorage.setItem('theme', theme)
                setTheme(theme)
                showActiveTheme(theme)
            })
        })
})

function handleThemeBtn(theme) {
    $('.theme-btn-main').text("");
    if (theme === 'light') {
        $('.theme-btn-main').append("<i class='far fa-sun-bright theme-icon-active' data-href='#fa-sun-bright'></i>");
    } else if (theme === 'dim') {
        $('.theme-btn-main').append("<i class='far fa-moon-stars theme-icon-active' data-href='#fa-moon-stars'></i>");
    } else if (theme === 'dark') {
        $('.theme-btn-main').append("<i class='far fa-moon theme-icon-active' data-href='#fa-moon'></i>");
    }
}
//End Dark Mode