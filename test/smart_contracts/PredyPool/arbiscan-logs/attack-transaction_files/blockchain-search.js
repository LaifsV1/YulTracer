function blockChainSearchInit({ id, isMainPanel = true, classResultWrapper, groupIncludes = [], attributes }) {
    if (document.getElementById(id) === null)
        return;

    let isAdvancedFilterSearch = id === 'dropdownSearchFilterInputAdvanceSearch';

    let searchInput = document.getElementById(id);
    let mainContainer = document.getElementById(id).closest('.search-panel-container');
    let shortcutSlashIcon = mainContainer.querySelector('.shortcut-slash-icon');
    let clearIcon = mainContainer.querySelector('.clear-icon');
    let searchIcon = mainContainer.querySelector('.search-icon');
    let emptyTokenImage = document.getElementById('hdnSiteEmptyToken').value;    

    let searchCategory = null;
    let searchCategories = {};
    let searchCategoriesKeys = null;
    let currentActiveSearchCategories = '';
    let currentActiveSearchCategoriesLoop = '';
    let currentActiveSearchTag = '';
    let isScrollingEventAttachedGlobal = false;
    let isResetActiveScrollOverride = false;
    
    let siteToken = strSearchBoxSiteToken;

    const sortRanking = {
        1: 'Private Name Tags',
        2: 'Tokens (' + siteToken + ' 20)',
        3: 'NFTs (' + siteToken + ' 721 &amp; 1155)',
        4: 'Addresses',
        5: 'Labels',
    }

    const groupId = {
        "private_nametag": 1,
        "address": 2,
        "token": 3,
        "label": 4,
        "ens": 5,
        "txnhash": 6,
        "block": 7,
        "token_text": 8 // search on tokens page
    }

    const intRegex = /^\d+$/;

    function getTypeval({ searchkey }) {
        if (searchkey.endsWith(".eth") == true || searchkey.endsWith(".xyz") == true || searchkey.endsWith(".luxe") == true)
            return groupId.ens;

        if (searchkey.startsWith("0x") == true && searchkey.length == 42)
            return groupId.address;

        if (searchkey.startsWith("0x") == false && searchkey.length == 40)
            return groupId.address;

        if (searchkey.startsWith("0x") == true && searchkey.length == 66)
            return groupId.txnhash;

        if (searchkey.startsWith("0x") == false && searchkey.length == 64)
            return groupId.txnhash;

        if (intRegex.test(searchkey) == true)
            return groupId.block;

        if (id == 'erc20TokenSearchInput')
            return groupId.token_text;

        return null;
    }

    function redirectBasedOnGroupId({ searchkey = '', triggerNewTab = false }) {
        let currtypeval = getTypeval({ searchkey });

        let redirect_link = (() => {
            if (currtypeval === groupId.ens)
                return '/name-lookup-search?id=' + searchkey;

            if (currtypeval === groupId.address)
                return (searchkey.startsWith("0x") == true ? '/address/' + searchkey : '/address/0x' + searchkey);

            if (currtypeval === groupId.txnhash)
                return (searchkey.startsWith("0x") == true ? '/tx/' + searchkey : '/tx/0x' + searchkey);

            if (currtypeval === groupId.block)
                return '/block/' + searchkey;

            if (currtypeval === groupId.token_text)
                return '/tokens?q=' + searchkey;

            return '/search?f=0&q=' + searchkey;
        })();

        if (triggerNewTab) {
            window.open(redirect_link, '_blank');
        } else {
            window.location.href = redirect_link;
        }
    }

    searchInput.addEventListener("keydown", (event) => {
        if ((event.code === 'Enter' || event.keyCode === 13) && searchInput == document.activeElement && id !== 'dropdownSearchFilterInputAdvanceSearch') {
            redirectBasedOnGroupId({
                searchkey: event.target.value
            });
        }
        else if ((event.code === 'Enter' || event.keyCode === 13) && id === 'dropdownSearchFilterInputAdvanceSearch') {
            event.preventDefault();
            autocomplete.search();
        }
    });

    function isOverflow(element) {
        return element.scrollWidth != Math.max(element.offsetWidth, element.clientWidth)
    }

    function resetActiveClass(target) {
        if (target !== null) {
            currentActiveSearchTag = mainContainer.querySelector(".search-panel-tags-container > .text-bg-primary");

            currentActiveSearchTag.classList.remove('text-bg-primary', 'border-primary');
            currentActiveSearchTag.classList.add('text-black');

            target.classList.remove('text-black');
            target.classList.add('text-bg-primary', 'border-primary');

            if (isOverflow(document.querySelector('.search-panel-tags-container'))) {
                document.querySelector('.search-panel-tags-container').scrollTo({
                    left: target.offsetLeft - 5,
                    behavior: 'smooth'
                });
            }
        }
    }

    function triggerScrollAction() {
        let isScrollingEventAttached = false;

        if (!mainContainer.querySelector(`#auto-${id}-results`).classList.contains('mb-n0.5'))
            mainContainer.querySelector(`#auto-${id}-results`).classList.add('mb-n0.5', 'nav-pills', 'nav-pills-flush', 'nav-list', 'scrollbar-custom');

        if (!mainContainer.querySelector('.auto-results-wrapper').classList.contains('auto-is-active')) {
            mainContainer.querySelector('.auto-results-wrapper').classList.add('auto-is-active', 'shadow');

            if (classResultWrapper) {
                let classResultWrapperArr = classResultWrapper.split(' ');

                for (let i = 0; i < classResultWrapperArr.length; i++) {
                    mainContainer.querySelector('.auto-results-wrapper').classList.add(classResultWrapperArr[i]);
                }
            }
        }

        if (
            searchInput.value === '' && searchInput === document.activeElement &&
            mainContainer.querySelector('.auto-results-wrapper').classList.contains('auto-is-active')
        ) {
            mainContainer.querySelector('.search-panel-header').classList.add('d-none');
            if (mainContainer.querySelector('.search-footer')) {
                mainContainer.querySelector('.search-footer').classList.add('d-none');
            }
        }

        //mainContainer.querySelector(`#auto-${id}-results`).classList.add('d-none');

        if (shortcutSlashIcon && shortcutSlashIcon.classList.contains('d-sm-flex'))
            shortcutSlashIcon.classList.toggle('d-sm-flex');

        if (shortcutSlashIcon && !shortcutSlashIcon.classList.contains('d-none'))
            shortcutSlashIcon.classList.toggle('d-none');

        if ((isMainPanel || isAdvancedFilterSearch) && !isScrollingEventAttached) {
            mainContainer.querySelector(`#auto-${id}-results`).addEventListener("scroll", function (e) {
                for (searchCategoriesKeys in searchCategories) {
                    if (searchCategories[searchCategoriesKeys] <= e.target.scrollTop) {
                        currentActiveSearchCategoriesLoop = searchCategoriesKeys;
                    }
                }

                if (currentActiveSearchCategories !== currentActiveSearchCategoriesLoop) {
                    if (isResetActiveScrollOverride === false)
                        resetActiveClass(mainContainer.querySelector(`.${currentActiveSearchCategoriesLoop.replace('search-category', 'search-tag').replace('-(' + siteToken.toLowerCase() + '-20)', '').replace('-(' + siteToken.toLowerCase() + '-721-&-1155)', '')}`));

                    currentActiveSearchCategories = currentActiveSearchCategoriesLoop;
                    isResetActiveScrollOverride = false;
                }
            });

            isScrollingEventAttached = true;
        }
    }

    function getKeyByValue(object, value) {
        return Object.keys(object).find(key => object[key] === value);
    }

    if (isMainPanel || isAdvancedFilterSearch) {
        window.addEventListener("keydown", (event) => {
            if ((event.code === 'Slash' || event.keyCode === 191) && searchInput != document.activeElement && document.activeElement.tagName !== 'INPUT' && document.activeElement.tagName !== 'TEXTAREA') {
                event.preventDefault();

                setTimeout(function () {
                    searchInput.focus();
                    searchInput.click();

                    if (shortcutSlashIcon)
                        shortcutSlashIcon.classList.add('d-none');
                });
            }

            if (event.code === 'Escape' && searchInput === document.activeElement) {
                mainContainer.querySelector('.auto-results-wrapper').classList.remove('auto-is-active');

                searchInput.blur();

                if (document.getElementById(id).value === '' && shortcutSlashIcon && !shortcutSlashIcon.classList.contains('d-sm-flex')) {
                    shortcutSlashIcon.classList.toggle('d-sm-flex');
                    clearIcon.classList.add('d-none');
                }

                if (document.getElementById(id).value === '') {
                    if (searchIcon)
                        searchIcon.classList.add('d-none');
                }
            }

            if ((event.code === 'ArrowDown' || event.keyCode === 40) || (event.code === 'ArrowUp' || event.keyCode === 38)) {
                if (
                    mainContainer.querySelector(`#auto-${id}-results`).classList.contains('d-none') &&
                    searchInput === document.activeElement &&
                    mainContainer.querySelector('.auto-results-wrapper').classList.contains('auto-is-active')
                ) {
                    searchInput.value = '';
                }
            }

            setTimeout(function () {
                if (
                    searchInput.value === '' && searchInput === document.activeElement &&
                    mainContainer.querySelector('.auto-results-wrapper').classList.contains('auto-is-active')
                ) {
                    mainContainer.querySelector('.search-panel-header').classList.add('d-none');
                    mainContainer.querySelector(`#auto-${id}-results`).classList.add('d-none');
                    mainContainer.querySelector('.search-footer').classList.add('d-none');
                }
            });
        });
    }

    searchInput.addEventListener("blur", (e) => {
        if(document.getElementById(id).value === '' && shortcutSlashIcon && !shortcutSlashIcon.classList.contains('d-sm-flex'))
            shortcutSlashIcon.classList.toggle('d-sm-flex');

        if (document.getElementById(id).value === '') {
            if (!(e.relatedTarget && e.relatedTarget.classList.contains('search-panel-ads'))) {
                if (mainContainer.querySelector('.auto-results-wrapper').classList.contains('auto-is-active'))
                    setTimeout(function () {
                        mainContainer.querySelector('.auto-results-wrapper').classList.toggle('auto-is-active');
                    });
            }

            if (clearIcon && !clearIcon.classList.contains('d-none'))
                clearIcon.classList.add('d-none');

            if (searchIcon && !searchIcon.classList.contains('d-none'))
                searchIcon.classList.add('d-none');
        }
    });

    searchInput.addEventListener("focus", () => {
        triggerScrollAction();
    });

    mainContainer.addEventListener("click", function (e) {
        if (e.target.classList.contains('search-panel-tags')) {

            mainContainer.querySelector(`#auto-${id}-results`)
                .scrollTo({
                    top: mainContainer.querySelector('.search-category-' + e.target.textContent.toLowerCase().replace(/ /g, '-').replace('-(' + siteToken.toLowerCase() + '-20)', '').replace('-(' + siteToken.toLowerCase() + '-721-&-1155)', '')).offsetTop + 1,
                    left: 0,
                    behavior: 'smooth'
                });

            isResetActiveScrollOverride = true;
            resetActiveClass(e.target);
        }
    });

    if (clearIcon) {
        clearIcon.addEventListener("click", () => {
            clearIcon.classList.add('d-none');

            if (searchIcon)
                searchIcon.classList.add('d-none');

            autocomplete.destroy();
        });
    }

    if (searchIcon) {
        searchIcon.addEventListener("click", (event) => {
            redirectBasedOnGroupId({
                searchkey: searchInput.value,
                triggerNewTab: event.ctrlKey || event.metaKey ? true : false
            });
        });
    }

    let autocomplete = new Autocomplete(id, {
        cache: true,
        classPreventClosing: "search-panel-tags-container",
        classGroup: "text-cap fw-bold border-top px-2 pt-3 py-1 mb-0",
        clearButton: false,
        insertToInput: true,
        delay: 350,

        onSearch: ({ currentValue }) => {
            let res = new Promise((resolve) => {
                var filterBy = ($('.filterby').val() == undefined ? '0' : $('.filterby').val());
                var curPath = encodeURIComponent(window.location.search);

                if (window.location.href.indexOf('advanced-filter') > -1 && isMainPanel === false) {
                    filterBy = 15;
                }

                if (window.location.href.indexOf('tokens') > -1 && isMainPanel === false) {
                    filterBy = 2;
                }

                let strUrl = "/searchHandler?term=" + searchInput.value + "&filterby=" + filterBy;

                //use in advance-filtered
                if (curPath !== '' && isMainPanel === false) {
                    strUrl += "&curPath=" + curPath


                    if (document.querySelector('input[id="btnradio2"]:checked') === null)
                        strUrl += "&i=0";
                    else
                        strUrl += "&i=1";
                }

                fetch(strUrl)
                    .then((response) => response.json())
                    .then((data) => {
                        if (data.length !== 0) {
                            let result = data
                                .sort((a, b) => {
                                   
                                    let rankA = parseInt(getKeyByValue(sortRanking, a.group));
                                    let rankB = parseInt(getKeyByValue(sortRanking, b.group));

                                    if (rankA === 2 && rankB === 2) {
                                        if (a.ps && b.ps) {
                                            return 0
                                        } else if (b.ps) {
                                            return 1
                                        }

                                        if (b.is_checked !== a.is_checked) {
                                            return (b.is_checked === 'True') - (a.is_checked === 'True');
                                        }

                                        if (a.img === '' || b.img === '') {
                                            return (a.img === '') - (b.img === '');
                                        }

                                        if (a.website === '' || b.website === '') {
                                            return (a.website === '') - (b.website === '');
                                        }

                                        return 0;
                                    }

                                    return rankA - rankB;
                                });

                            if (groupIncludes.length > 0) {
                                result = result.filter((element) => {
                                    return groupIncludes.includes(element.group);
                                });
                            }

                            resolve(result);
                        }
                        else {
                            resolve([]);
                        }
                    })
                    .catch((error) => {
                        console.error(error);
                    });
            });

            if (clearIcon) {
                if (currentValue === '' || res.length === 0) {
                    if (!clearIcon.classList.contains('d-none'))
                        clearIcon.classList.add('d-none');

                    return [{}];
                }

                if (clearIcon.classList.contains('d-none'))
                    clearIcon.classList.remove('d-none');
            }

            if (searchIcon) {
                if (currentValue === '' || res.length === 0) {
                    if (!searchIcon.classList.contains('d-none'))
                        searchIcon.classList.add('d-none');

                    return [{}];
                }

                if (searchIcon.classList.contains('d-none'))
                    searchIcon.classList.remove('d-none');
            }

            return res;
        },

        onResults: ({ currentValue, matches, template, classGroup }) => {

            if (isMainPanel || isAdvancedFilterSearch) {
                if (currentValue === '' || Object.keys(matches[0]).length === 0) {
                    mainContainer.querySelector('.search-panel-header').innerHTML = '';
                    mainContainer.querySelector('.search-footer').classList.add('d-none');

                    return '';
                }

                mainContainer.querySelector('.search-panel-header').classList.remove('d-none');
                mainContainer.querySelector(`#auto-${id}-results`).classList.remove('d-none');
                mainContainer.querySelector('.search-footer').classList.remove('d-none');
            }
            else {
                mainContainer.querySelector(`#auto-${id}-results`).classList.remove('d-none');
            }

            currentActiveSearchCategories = "search-category-" + matches[0][attributes.group].toLowerCase().replace(/ /g, '-');

            if (isMainPanel || isAdvancedFilterSearch) {
                mainContainer.querySelector('.search-panel-header').innerHTML = `<div class="search-panel-tags-container border-top d-flex overflow-x-auto scrollbar-custom gap-1 px-4 py-3">${[...new Set(matches
                    .map(el => el[attributes.group]))
                ]
                    .map((el, index) => `<span class="search-tag-${el.replace(' (' + siteToken + ' 20)', '').replace(' (' + siteToken + ' 721 &amp; 1155)', '').toLowerCase().replace(/ /g, '-')} badge fw-medium rounded-pill border ${index === 0 ? 'text-bg-primary border-primary' : 'text-black'} py-1 search-panel-tags" style="cursor: pointer;">${el}</span>`)
                    .join('')
                    }
                </div>`;
            }


            return matches === 0
                ? template
                : matches.map((el, index, array) => {
                    let group = (isMainPanel || isAdvancedFilterSearch) && el[attributes.group] !== array[index - 1]?.[attributes.group]
                        ? `<div class="search-category-${el[attributes.group].toLowerCase().replace(/ /g, '-').replace('-(' + siteToken.toLowerCase() + '-20)', '').replace('-(' + siteToken.toLowerCase() + '-721-&amp;-1155)', '')} ${classGroup}" style="font-size: 0.65rem;"><span>${el[attributes.group]}</span></div>`
                        : "";

                    let img_url = '';
                    let altText = '';

                    if (el[attributes.groupid] === '3') {
                        if (el[attributes.img] === '') {
                            img_url = emptyTokenImage;
                        } else {

                            let isValid = isValidUrl(el[attributes.img]);
                            if (isValid) {
                                img_url = el[attributes.img];
                            } else {
                                img_url = '/token/images/' + el[attributes.img];
                            }
                        }
                        altText = 'Token';
                    }

                    if (el[attributes.groupid] === '2') {
                        img_url = blockies.create({ seed: el[attributes.address].toLowerCase(), size: 8, scale: 16 }).toDataURL();
                        altText = 'Address';
                    }

                    return `${group}
                    <li class="nav-item nav-link ${(isMainPanel || isAdvancedFilterSearch) ? 'mb-2' : 'my-2'} rounded" style="cursor: pointer;">
                        <span class="d-none">${el[attributes.address] || el[attributes.name]}</span>
                        <a href="${el[attributes.link]}" class="nav-link p-2 d-flex ${el[attributes.address] ? 'align-items-start' : 'align-items-center'} w-100">
                            <div class="me-2">
                                ${el[attributes.groupid] === '3' || el[attributes.groupid] === '2'
                            ? `<img src="${img_url}" width="22" class="rounded-circle" alt="${altText}">` : ''}
                                ${el[attributes.groupid] === '1' || el[attributes.groupid] === '4'
                            ? `<span class="badge bg-light border text-muted rounded-circle content-center" style="width: 1.375rem; height: 1.375rem;">
                                           <i class="fa fa-tag"></i>
                                       </span>` : ''}
                            </div>

                            <div class="flex-fill text-truncate">
                                <h6 class="d-flex align-items-center fw-normal mb-0">
                                    <div class="text-truncate me-2">${el[attributes.name]}</div>
                                    ${el[attributes.rate] ? `<span class="badge text-dark fw-medium p-1">${el[attributes.rate]}</span>` : ''}
                                    ${el[attributes.ps] ? `<span class="badge bg-white border border-dark dark:border-white border-opacity-15 text-dark text-nowrap fw-medium transition-all rounded-pill py-1 px-1.5 ms-1"><i class="far fa-sparkles text-yellow-600 me-0.5"></i> Featured</span>` : ''}
                                    ${el[attributes.is_verified] === 'True' && el[attributes.reputation] === '2' ? `<i class="fa fa-badge-check text-info ms-auto"></i>` : ''}
                                    ${el[attributes.is_verified] === 'True' && el[attributes.reputation] === '1' ? `<i class="far fa-badge-check text-muted ms-auto"></i>` : ''}
                                </h6>
                                ${el[attributes.address] && el[attributes.name] !== '' ? `<span class="text-muted text-truncate small">${el[attributes.address]}</span>` : `<span class="text-muted text-truncate">${el[attributes.address]}</span>`}
                                ${el[attributes.website] ? `<div class="text-muted text-truncate small">${el[attributes.website]}</div>` : ''}
                            </div>
                        </a>
                    </li>`;
                })
                    .join("");
        },

        onSubmit: ({ index }) => {
            let selectedElem = document.querySelectorAll(`#auto-${id}-results li`)[index];
            searchInput.value = 'Searching...';
            location.href = selectedElem.childNodes[3].href;
        },

        onRender: async ({ results }) => {
            if (isMainPanel || isAdvancedFilterSearch) {
                if (isMainPanel) {
                    results.insertAdjacentHTML(
                        'beforebegin',
                        getSeachBoxAd() + `<div class="search-panel-header"></div>`
                    );
                }
                results.insertAdjacentHTML(
                    'afterend',
                    `<div class="search-footer px-4 py-2 border-top d-flex justify-content-between d-none">
                        <div class="d-flex align-items-center">
                            <svg class="me-2" width="44" height="20" viewBox="0 0 44 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.64062 9.5625L9.57812 5.4375C9.69531 5.32031 9.83594 5.27344 10 5.27344C10.1406 5.27344 10.2812 5.32031 10.3984 5.4375L14.3359 9.5625C14.5469 9.79688 14.5469 10.1484 14.3125 10.3594C14.1016 10.5703 13.7266 10.5703 13.5156 10.3359L10.5625 7.21875V15.1875C10.5625 15.5156 10.3047 15.75 10 15.75C9.71875 15.75 9.4375 15.5156 9.4375 15.1875V7.21875L6.46094 10.3359C6.25 10.5703 5.875 10.5703 5.66406 10.3594C5.42969 10.1484 5.42969 9.77344 5.64062 9.5625Z" fill="#ADB5BD"/>
                                <rect x="0.5" y="0.5" width="19" height="19" rx="3.5" class="stroke-gray-200 dark:stroke-gray-600"/>
                                <path d="M38.3359 11.4609L34.3984 15.5859C34.2812 15.7031 34.1406 15.75 34 15.75C33.8359 15.75 33.6953 15.7031 33.5781 15.5859L29.6406 11.4609C29.4297 11.2266 29.4297 10.875 29.6641 10.6641C29.875 10.4531 30.25 10.4531 30.4609 10.6875L33.4375 13.8047V5.83594C33.4375 5.50781 33.6719 5.27344 33.9766 5.27344C34.2578 5.27344 34.5625 5.50781 34.5625 5.83594V13.8047L37.5156 10.6875C37.7266 10.4531 38.1016 10.4531 38.3125 10.6641C38.5469 10.875 38.5469 11.2266 38.3359 11.4609Z" fill="#ADB5BD"/>
                                <rect x="24.5" y="0.5" width="19" height="19" rx="3.5" class="stroke-gray-200 dark:stroke-gray-600"/>
                            </svg>
                            <div class="text-muted small me-3">Navigate</div>
                            <svg class="me-2" width="28" height="20" viewBox="0 0 28 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.99037 12.9312V14H5.83852V12.9312H9.99037ZM6.21986 6.17969V14H4.87172V6.17969H6.21986ZM9.44789 9.44531V10.498H5.83852V9.44531H9.44789ZM9.96352 6.17969V7.25391H5.83852V6.17969H9.96352ZM15.0957 11.9858C15.0957 11.8247 15.0706 11.6815 15.0205 11.5562C14.974 11.4308 14.8898 11.3162 14.7681 11.2124C14.6463 11.1086 14.4744 11.0083 14.2524 10.9116C14.034 10.8114 13.7547 10.7093 13.4146 10.6055C13.0422 10.4909 12.6984 10.3638 12.3833 10.2241C12.0718 10.0809 11.7996 9.91618 11.5669 9.72998C11.3341 9.5402 11.1533 9.32357 11.0244 9.08008C10.8955 8.83301 10.8311 8.54834 10.8311 8.22607C10.8311 7.90739 10.8973 7.61735 11.0298 7.35596C11.1659 7.09456 11.3574 6.86898 11.6045 6.6792C11.8551 6.48584 12.1506 6.33724 12.4907 6.2334C12.8309 6.12598 13.2069 6.07227 13.6187 6.07227C14.1987 6.07227 14.6982 6.17969 15.1172 6.39453C15.5397 6.60938 15.8638 6.89762 16.0894 7.25928C16.3185 7.62093 16.4331 8.02018 16.4331 8.45703H15.0957C15.0957 8.19922 15.0402 7.97184 14.9292 7.7749C14.8218 7.57438 14.6571 7.41683 14.4351 7.30225C14.2166 7.18766 13.9391 7.13037 13.6025 7.13037C13.2839 7.13037 13.0189 7.17871 12.8076 7.27539C12.5964 7.37207 12.4388 7.50277 12.335 7.66748C12.2311 7.83219 12.1792 8.01839 12.1792 8.22607C12.1792 8.37288 12.2132 8.50716 12.2812 8.62891C12.3493 8.74707 12.4531 8.85807 12.5928 8.96191C12.7324 9.06217 12.9079 9.15706 13.1191 9.24658C13.3304 9.3361 13.5793 9.42204 13.8657 9.50439C14.299 9.6333 14.6768 9.77653 14.999 9.93408C15.3213 10.0881 15.5898 10.2635 15.8047 10.4604C16.0195 10.6574 16.1807 10.8812 16.2881 11.1318C16.3955 11.3789 16.4492 11.66 16.4492 11.9751C16.4492 12.3045 16.383 12.6017 16.2505 12.8667C16.118 13.1281 15.9282 13.3519 15.6812 13.5381C15.4377 13.7207 15.144 13.8621 14.8003 13.9624C14.4601 14.0591 14.0806 14.1074 13.6616 14.1074C13.2856 14.1074 12.915 14.0573 12.5498 13.957C12.1882 13.8568 11.8587 13.7046 11.5615 13.5005C11.2643 13.2928 11.028 13.035 10.8525 12.7271C10.6771 12.4155 10.5894 12.0521 10.5894 11.6367H11.9375C11.9375 11.891 11.9805 12.1076 12.0664 12.2866C12.1559 12.4657 12.2795 12.6125 12.437 12.7271C12.5946 12.8381 12.7772 12.9204 12.9849 12.9741C13.1961 13.0278 13.4217 13.0547 13.6616 13.0547C13.9767 13.0547 14.2399 13.0099 14.4512 12.9204C14.666 12.8309 14.8271 12.7056 14.9346 12.5444C15.042 12.3833 15.0957 12.1971 15.0957 11.9858ZM22.1507 11.4541H23.4935C23.4505 11.9661 23.3073 12.4227 23.0638 12.8237C22.8203 13.2212 22.4784 13.5345 22.0379 13.7637C21.5975 13.9928 21.0622 14.1074 20.432 14.1074C19.9486 14.1074 19.5135 14.0215 19.1268 13.8496C18.7401 13.6742 18.4089 13.4271 18.1332 13.1084C17.8574 12.7861 17.6462 12.3976 17.4994 11.9429C17.3561 11.4881 17.2845 10.9797 17.2845 10.4175V9.76758C17.2845 9.2054 17.3579 8.69694 17.5047 8.24219C17.6551 7.78743 17.87 7.39893 18.1493 7.07666C18.4286 6.75081 18.7634 6.50195 19.1537 6.33008C19.5476 6.1582 19.9898 6.07227 20.4803 6.07227C21.1034 6.07227 21.6297 6.18685 22.0594 6.41602C22.4891 6.64518 22.8221 6.96208 23.0585 7.3667C23.2984 7.77132 23.4452 8.23503 23.4989 8.75781H22.1561C22.1203 8.42122 22.0415 8.13298 21.9198 7.89307C21.8016 7.65316 21.6262 7.47054 21.3934 7.34521C21.1607 7.21631 20.8563 7.15186 20.4803 7.15186C20.1724 7.15186 19.9038 7.20915 19.6747 7.32373C19.4455 7.43831 19.2539 7.60661 19.1 7.82861C18.946 8.05062 18.8296 8.32454 18.7508 8.65039C18.6756 8.97266 18.638 9.34147 18.638 9.75684V10.4175C18.638 10.8114 18.6721 11.1694 18.7401 11.4917C18.8117 11.8104 18.9191 12.0843 19.0624 12.3135C19.2092 12.5426 19.3954 12.7199 19.621 12.8452C19.8465 12.9705 20.1169 13.0332 20.432 13.0332C20.8151 13.0332 21.1249 12.9723 21.3612 12.8506C21.6011 12.7288 21.7819 12.5516 21.9037 12.3188C22.029 12.0825 22.1114 11.7943 22.1507 11.4541Z" fill="#ADB5BD"/>
                                <rect x="0.5" y="0.5" width="27" height="19" rx="3.5" class="stroke-gray-200 dark:stroke-gray-600"/>
                            </svg>
                            <div class="text-muted small">Close</div>
                        </div>
                        <div class="d-flex align-items-center">
                            <svg class="me-2" width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7.16406 14.6484L4.16406 11.6484C4.04688 11.5547 4 11.4141 4 11.25C4 11.1094 4.04688 10.9688 4.16406 10.875L7.16406 7.875C7.375 7.64062 7.72656 7.64062 7.9375 7.875C8.17188 8.08594 8.17188 8.4375 7.9375 8.64844L5.89844 10.6875H14.875V5.8125C14.875 5.50781 15.1094 5.25 15.4375 5.25C15.7422 5.25 16 5.50781 16 5.8125V11.25C16 11.5781 15.7422 11.8125 15.4375 11.8125H5.89844L7.9375 13.875C8.17188 14.0859 8.17188 14.4375 7.9375 14.6484C7.72656 14.8828 7.375 14.8828 7.16406 14.6484Z" fill="#ADB5BD"/>
                                <rect x="0.5" y="0.5" width="19" height="19" rx="3.5" class="stroke-gray-200 dark:stroke-gray-600"/>
                            </svg>
                            <div class="text-muted small">Enter</div>
                        </div>
                    </div>`
                );
            }

            results.insertAdjacentHTML(
                'beforebegin',
                `<div class="search-panel-header"></div>`
            );
        },

        onOpened: ({ element, results }) => {
            if (!isScrollingEventAttachedGlobal) {
                triggerScrollAction();
                isScrollingEventAttachedGlobal = true;
            }

            searchCategory = mainContainer.querySelectorAll("div[class^=search-category]");

            Array.prototype.forEach.call(searchCategory, function (e) {
                searchCategories[e.classList[0]] = e.offsetTop;
            });
        },
    });
}

function getSeachBoxAd() {
    var showSearchBoxAd = [];
    var intAdsCount = availableAd.length;
    var currentDate = new Date();
    var flag = false;

    if (intAdsCount === 4) {
        if (currentDate.getSeconds() >= 45) {
            showSearchBoxAd.push(availableAd[3]);
        } else if (currentDate.getSeconds() >= 30) {
            showSearchBoxAd.push(availableAd[2]);
        } else if (currentDate.getSeconds() >= 15) {
            showSearchBoxAd.push(availableAd[1]);
        } else {
            showSearchBoxAd.push(availableAd[0]);
        }
        flag = true;
    } else if (intAdsCount === 3) {
        if (currentDate.getSeconds() >= 40) {
            showSearchBoxAd.push(availableAd[2]);
        } else if (currentDate.getSeconds() >= 20) {
            showSearchBoxAd.push(availableAd[1]);
        } else {
            showSearchBoxAd.push(availableAd[0]);
        }
        flag = true;
    } else if (intAdsCount === 2) {
        if (currentDate.getSeconds() >= 30) {
            showSearchBoxAd.push(availableAd[1]);
        } else {
            showSearchBoxAd.push(availableAd[0]);
        }
        flag = true;
    } else if (intAdsCount === 1) {
        showSearchBoxAd.push(availableAd[0]);
        flag = true;
    }

    var strAdResult = (flag === true ? showSearchBoxAd[0] : "");
    return strAdResult;
}

const isValidUrl = urlString => {
    try {
        return Boolean(new URL(urlString));
    }
    catch (e) {
        return false;
    }
}