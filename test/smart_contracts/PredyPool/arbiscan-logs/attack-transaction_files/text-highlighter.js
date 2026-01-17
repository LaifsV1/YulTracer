var myFnGeneratedHLRandomIds = new Set();
var myHLRandomIds = 0
function myFnGenerateUniqueId() {
    let id;
    do {
        //id = crypto.randomUUID();
        id = myHLRandomIds
        myHLRandomIds += 1;
    } while (myFnGeneratedHLRandomIds.has(id));

    myFnGeneratedHLRandomIds.add(id);
    return id;
}

var TextHighlight = {
    count: 0,
    isHightlight: false,
    classType: "",
    nontable_defaultHighlightClasses: "bg-warning bg-opacity-15 rounded border-warning border-dashed border px-1 mx-n1",
    contentMap: {},
    wrapEL: {},
    cacheEL: {},
    addContent: function (content, element) {
        if (!TextHighlight.contentMap[content]) {
            TextHighlight.contentMap[content] = [];
        }

        TextHighlight.contentMap[content].push(element);
    },
    init: function (siteName, flag) {
        function findFirstTextChild(el) {
            if (el && el.classList.contains('hash-tag'))
                return el;
            for (const child of el.childNodes) {
                if (child instanceof Text && child.nodeValue.trim() !== '') {
                    return el;
                }
                if (child instanceof HTMLElement) {
                    const result = findFirstTextChild(child);
                    if (result)
                        return result;
                }
            }
            return null;
        }
        const wrapElements = (el) => {
            //if (!el.dataset.uid) {
            //    el.dataset.uid = myFnGenerateUniqueId();
            //}
            //var tmpId = el.dataset.uid

            //if (this.wrapEL[tmpId]) {
            //    return this.wrapEL[tmpId];
            //}
            if (el?.previousElementSibling && !el.previousElementSibling.parentNode.classList.contains("dom-texthighlight")) {
                let isApplied = false;
                let wrapper = null;
                let prevSibling = el.previousElementSibling;
                let prevSibling_2;
                if (el.previousElementSibling.previousElementSibling?.tagName === 'IMG' || el.previousElementSibling.previousElementSibling?.tagName === 'I') {
                    prevSibling_2 = el.previousElementSibling.previousElementSibling;
                }
                if (prevSibling) {
                    wrapper = document.createElement('div');
                    wrapper.classList.add('d-flex', 'align-items-center', 'gap-1', 'dom-texthighlight');
                    el.parentNode.insertBefore(wrapper, prevSibling);
                    if (prevSibling_2) {
                        wrapper.appendChild(prevSibling_2);
                    }
                    wrapper.appendChild(prevSibling);
                    wrapper.appendChild(el);
                    isApplied = true;
                }
                if (el?.previousElementSibling?.parentNode?.nextElementSibling?.classList.contains('text-muted')) {
                    wrapper = document.createElement('div');
                    wrapper.classList.add('d-flex', 'align-items-center', 'gap-1', 'dom-texthighlight');
                    el.parentNode.parentNode.insertBefore(wrapper, el.parentNode.parentNode.firstChild);
                    wrapper.appendChild(el.parentNode.nextElementSibling);
                    wrapper.prepend(el.parentNode);
                    isApplied = true;
                }
                if (isApplied) {
                    //this.wrapEL[tmpId] = wrapper;
                    return wrapper;
                }
            } else if (el?.previousElementSibling) {
                if (el?.previousElementSibling?.parentNode?.nextElementSibling?.classList.contains('text-muted')) {
                    const wrapper = document.createElement('div');
                    wrapper.classList.add('d-flex', 'align-items-center', 'gap-1', 'dom-texthighlight');
                    el.parentNode.parentNode.insertBefore(wrapper, el.parentNode.parentNode.firstChild);
                    wrapper.appendChild(el.parentNode.nextElementSibling);
                    wrapper.prepend(el.parentNode);
                    //this.wrapEL[tmpId] = wrapper;
                    return wrapper;
                }
                //this.wrapEL[tmpId] = el.previousElementSibling.parentNode;
                return el.previousElementSibling.parentNode
            }
        }
            ;
        const wrapElementsNonTables = (el) => {
            //if (!el.dataset.uid) {
            //    el.dataset.uid = myFnGenerateUniqueId();
            //}
            //var tmpId = el.dataset.uid

            //if (this.wrapEL[tmpId]) {
            //    return this.wrapEL[tmpId];
            //}
            if (el?.previousElementSibling && !el.previousElementSibling.parentNode.classList.contains("dom-texthighlight")) {
                let isApplied = false;
                let wrapper = null;
                const prevSibling = el.previousElementSibling;
                if (prevSibling) {
                    wrapper = document.createElement('div');
                    wrapper.classList.add('border', 'border-white', 'dom-texthighlight-nontable', 'd-inline-block');
                    wrapper.style.setProperty('--bs-border-opacity', '0');
                    if (prevSibling.classList.contains('me-1')) {
                        wrapper.classList.add('me-1', 'prev-me-1');
                    } else if (el.classList.contains('ms-1')) {
                        wrapper.classList.add('me-1', 'prev-me-1');
                    }
                    el.parentNode.insertBefore(wrapper, prevSibling);
                    wrapper.appendChild(prevSibling);
                    wrapper.appendChild(el);
                    isApplied = true;
                }
                if (isApplied) {
                    //this.wrapEL[tmpId] = wrapper;
                    return wrapper;
                }
            }
        };
        const wrapTdElements = (el) => {
            //if (!el.dataset.uid) {
            //    el.dataset.uid = myFnGenerateUniqueId();
            //}
            //var tmpId = el.dataset.uid

            //if (this.wrapEL[tmpId]) {
            //    return this.wrapEL[tmpId];
            //}
            const wrapper = document.createElement('div');
            wrapper.classList.add('d-inline-flex', 'align-items-center', 'dom-texthighlight2');
            wrapper.innerHTML = el.innerHTML;
            el.innerHTML = '';
            el.appendChild(wrapper);
            //this.wrapEL[tmpId] = wrapper;
            return wrapper;
        };
        TextHighlight.contentMap = {};
        const hasAllClasses = (el, classes) => {
            try {
                return classes.split(' ').every(cls => el.classList.contains(cls));
            } catch (error) {
                return false;
            }
        }
        let defaultHighlightClasses = 'bg-warning bg-opacity-15 rounded border-warning border border-dashed px-1 mx-n1';
        let defaultInitialClasses = 'border border-white px-1 mx-n1';
        let privateNametagMarker = 'badge rounded-pill';
        let privateNametagHighlightClasses = 'bg-warning bg-opacity-15 border-warning border-dashed';
        let privateNametagInitialClasses = 'bg-light border-dark dark:border-white border-opacity-10';
        let methodMarker = 'd-block badge border w-100 py-1.5';
        let methodHighlightClasses = 'bg-warning bg-opacity-15 border-warning border-dashed';
        let methodInitialClasses = 'bg-light border-dark dark:border-white';
        function setupClassesForNonTables(el) {
            if (el.closest('.d-flex.flex-wrap')) {
                el = el.closest('.d-flex.flex-wrap');
                if (el.closest('.d-flex.flex-column')) {
                    el = el.closest('.d-flex.flex-column');
                    if (el.tagName !== 'BODY')
                        el.classList.add('px-1', 'mx-n1', 'py-1', 'my-n1');
                }
            }
        }
        function doHighlight() {
            const tables = document.querySelectorAll('table');
            TextHighlight.contentMap = {};
            let highlightIndices_2 = Array.from(document.querySelectorAll(['[data-highlight-value]']));
            highlightIndices_2.forEach((el, index) => {
                if (el.closest('td'))
                    return;

                let content = el.textContent.trim().toLowerCase();
                let defaultInlineClasses = 'border border-white px-1 mx-n1';
                el.style.setProperty('--bs-border-radius', '0.375rem');
                if (el.getAttribute('data-highlight-value')) {
                    content = el.getAttribute('data-highlight-value').toLowerCase();
                }
                if (el.getAttribute('data-highlight-target')) {
                    content = el.getAttribute('data-highlight-target').toLowerCase();
                }
                if (el.querySelector(['[data-highlight-target]'])) {
                    content = el.querySelector(['[data-highlight-target]']).getAttribute('data-highlight-target').toLowerCase();
                }
                if (content) {
                    if (!TextHighlight.contentMap[content]) {
                        TextHighlight.contentMap[content] = [];
                    }

                    if (!el.dataset.uid) {
                        var tmpId = myFnGenerateUniqueId();
                        el.dataset.uid = tmpId

                        if (el.previousElementSibling?.tagName === 'I') {
                            defaultInlineClasses = defaultInlineClasses.replace(' mx-n1', '');
                        }
                        if (el.classList.contains('me-2')) {
                            defaultInlineClasses = defaultInlineClasses.replace(' mx-n1', ' ms-n1');
                        }
                        if (el.classList.contains('me-1')) {
                            defaultInlineClasses = defaultInlineClasses.replace(' mx-n1', ' ms-n1 prev-me-1');
                            if (!el.classList.contains('ms-1') && !Array.from(el.parentElement.children).some(child => hasAllClasses(child, privateNametagMarker))) {
                                el.classList.remove('me-1');
                            }
                            if (!el.previousElementSibling && el.parentElement?.classList.contains('d-inline-block')) {
                                el.parentElement.classList.remove('d-inline-block');
                                el.parentElement.classList.add('d-flex');
                            }
                        }
                        if (el.classList.contains('address-to-idm')) {

                            el.classList.add('d-flex', 'align-items-center');

                        }
                        if (el.childElementCount > 1) {
                            if (el.querySelector('img') !== null && el.querySelector('a') !== null && !(el.parentElement?.nextElementSibling && hasAllClasses(el.parentElement?.nextElementSibling, privateNametagMarker))) {
                                if (!el.parentElement?.nextElementSibling?.classList.contains('js-clipboard')) {
                                    el.classList.add('text-nowrap');
                                }
                            }
                        }
                        if (el.parentNode?.classList.contains('font-monospace')) {
                            defaultInlineClasses = defaultInlineClasses.replace(' ', '');
                        }
                        if (!hasAllClasses(el, privateNametagMarker)) {
                            el.classList.add(...defaultInlineClasses.split(" "), 'd-inline-block');
                            el.style.setProperty('--bs-border-opacity', '0');

                            //Fix bug: lost space bug#3364 
                            if (el.className == "text-break border border-white px-1 ms-n1 prev-me-1 d-inline-block mx-n1") {
                                el.className = "text-break border border-white px-1 ms-n1 prev-me-1 d-inline-block";
                            }
                        }
                        setupClassesForNonTables(el);
                        if (el.firstElementChild && el.firstElementChild.classList && hasAllClasses(el.firstElementChild, privateNametagMarker)) {
                            el = el.firstElementChild;
                        } else if (el.previousElementSibling?.tagName === 'IMG' || el.previousElementSibling?.tagName === 'I') {

                            let firstElmType = el.previousElementSibling?.tagName;
                            var tmpType = "1"
                            if (el.previousElementSibling?.tagName === 'I') {
                                tmpType = "2"
                            }
                            el.classList.remove(...defaultInlineClasses.split(" "));
                            if (hasAllClasses(el.firstElementChild, 'hash-tag text-truncate') && el.firstElementChild.style.maxWidth !== '') {
                                el.classList.add('d-inline-flex');
                            }
                            if (el.classList.contains('me-1')) {
                                el.classList.remove('me-1');
                            }
                            el = wrapElementsNonTables(el);
                            if (el.classList.contains('me-1')) {
                                el.classList.remove('me-1');
                            }
                            if (el.childElementCount > 1) {
                                if (!el.children[1].classList.contains("ms-1")) {
                                    el.firstElementChild.classList.add('me-1')
                                }

                                if (firstElmType != "IMG" && firstElmType != "img" && !el.previousElementSibling) { // for tx page with tx-action if first item is a domain, it not allow add nx-n1 class
                                    el.classList.add('mx-n1');
                                }
                            }

                            el.classList.add(...defaultInlineClasses.split(" "));
                        } else if (el.parentNode?.previousElementSibling?.tagName === 'IMG' || (el.parentNode?.previousElementSibling?.tagName === 'I' && !el.parentNode?.previousElementSibling?.classList.contains('fa-caret-right'))) {
                            el = wrapElementsNonTables(el.parentElement);
                            if (el.childElementCount > 1) {
                                el.firstElementChild.classList.add('me-1')
                            }
                        } else if (el.previousElementSibling?.tagName === 'SPAN' && el.previousElementSibling?.firstElementChild?.classList.contains('fa-file-alt')) {
                            el.classList.add('d-inline-block', 'align-middle');
                            el = wrapElementsNonTables(el);
                        }

                        el.addEventListener("mouseenter", doMouseEnter);
                        el.addEventListener("mouseleave", doMouseLeave);

                        el.dataset.uid = tmpId
                        TextHighlight.cacheEL[tmpId] = el
                    }
                    TextHighlight.contentMap[content].push(TextHighlight.cacheEL[el.dataset.uid]);
                }
            }
            );
            let highlightIndices_3 = Array.from(document.querySelectorAll(['[data-highlight-pos-value]']));
            highlightIndices_3.forEach((el, index) => {
                let content = el.textContent.trim().toLowerCase();
                let defaultInlineClasses = 'position-relative';
                el.style.setProperty('--bs-border-radius', '0.375rem');
                if (el.getAttribute('data-highlight-pos-value')) {
                    content = el.getAttribute('data-highlight-pos-value').toLowerCase();
                }
                if (content) {
                    if (!TextHighlight.contentMap[content]) {
                        TextHighlight.contentMap[content] = [];
                    }

                    if (!el.dataset.uid) {
                        var tmpId = myFnGenerateUniqueId();
                        el.dataset.uid = tmpId

                        el.classList.add(...defaultInlineClasses.split(" "));
                        el.style.setProperty('--bs-border-opacity', '0');
                        el.innerHTML += `<span class="js-highlight-span position-absolute bg-opacity-15 rounded border-white border-dashed border" style="top: -0.075rem; bottom: -0.075rem; left: -0.25rem; right: -0.25rem;"></span>`;
                        setupClassesForNonTables(el);
                        if (el.firstElementChild && el.firstElementChild.classList && hasAllClasses(el.firstElementChild, privateNametagMarker)) {
                            el = el.firstElementChild;
                        } else if (el.previousElementSibling?.tagName === 'IMG') {
                            el = wrapElementsNonTables(el);
                        }

                        el.addEventListener("mouseenter", doMouseEnter);
                        el.addEventListener("mouseleave", doMouseLeave);

                        el.dataset.uid = tmpId
                        TextHighlight.cacheEL[tmpId] = el
                    }
                    TextHighlight.contentMap[content].push(TextHighlight.cacheEL[el.dataset.uid]);
                }
            }
            );
            tables.forEach(function (table) {
                let classes = '';
                let initialClasses = '';
                const highlightHeaders = Array.from(table.querySelectorAll('thead tr th:not([style*="display: none"]):not([style*="display: none"]'));
                const highlightIndices = highlightHeaders.reduce((indices, header, index) => {
                    if (header.hasAttribute('data-highlight')) {
                        indices.push(index);
                    }
                    return indices;
                }
                    , []);
                const rows = Array.from(table.querySelectorAll('tr:not([style*="display:none"]):not([style*="display: none"])'));
                rows.forEach(row => {
                    var cells = Array.from(row.querySelectorAll('td:not([style*="display:none"]):not([style*="display: none"])'));
                    cells.forEach((cell, index) => {
                        if (cell && cell.getAttribute('colspan')) {
                            const colspanValue = cell.colSpan
                            if (colspanValue > 1) {
                                for (let i = 1; i < colspanValue; i++) {
                                    cells.splice(index + i, 0, null);
                                }
                            }
                        }
                    }
                    );
                    highlightIndices.forEach(index => {
                        const cell = cells[index];
                        if (!cell)
                            return;
                        cell.style.setProperty('--bs-border-radius', '0.375rem');
                        const nestedElement = cell.querySelector("*");
                        let actualElement = nestedElement && nestedElement.textContent.trim() ? findFirstTextChild(nestedElement) : cell;
                        if (!actualElement.dataset.uid) {
                            var tmpId = myFnGenerateUniqueId();
                            actualElement.dataset.uid = tmpId

                            if (actualElement === cell) {
                                actualElement = wrapTdElements(actualElement);
                            } else if (actualElement.previousElementSibling) {
                                actualElement = wrapElements(actualElement);
                            } else if (actualElement.parentElement.previousElementSibling?.tagName === 'IMG' || actualElement.parentElement.previousElementSibling?.tagName === 'I') {
                                actualElement = wrapElements(actualElement.parentElement);
                            } else if (actualElement?.childNodes[0]?.nodeType === Node.TEXT_NODE && actualElement?.childNodes[0]?.nextSibling) {
                                var textToReplace = actualElement?.childNodes[0].textContent;
                                if (textToReplace.trim() && actualElement.innerHTML.includes(textToReplace)) {
                                    actualElement.innerHTML = actualElement.innerHTML.replace(textToReplace, '<div>' + textToReplace + '</div>');
                                    actualElement = actualElement.children[0]
                                }
                            } else if (actualElement?.childNodes[1]?.nodeType === Node.TEXT_NODE && actualElement?.childNodes[1]?.nextSibling && actualElement?.childNodes[1]?.previousSibling) {
                                var textToReplace = actualElement?.childNodes[1].textContent;
                                if (textToReplace.trim() && actualElement.innerHTML.includes(textToReplace)) {
                                    actualElement.innerHTML = actualElement.innerHTML.replace(textToReplace, '<div>' + textToReplace + '</div>');
                                    actualElement = wrapElements(actualElement.children[1])
                                }
                            }
                            if (!hasAllClasses(actualElement, privateNametagMarker) && !hasAllClasses(actualElement, methodMarker)) {
                                actualElement.classList.add('border', 'px-1', 'mx-n1', ...defaultInitialClasses.split(" "));
                                actualElement.style.setProperty('--bs-border-opacity', '0');
                            }
                            if (actualElement.firstElementChild && actualElement.firstElementChild.classList && actualElement.firstElementChild.classList.contains('hash-tag') && actualElement.firstElementChild.classList.contains('text-truncate')) {
                                let firstElemChild = actualElement.firstElementChild;
                                if (firstElemChild.firstElementChild && firstElemChild.firstElementChild.classList && firstElemChild.firstElementChild.classList.contains('hash-tag') && firstElemChild.firstElementChild.classList.contains('text-truncate')) {
                                    firstElemChild.classList.add('lh-sm', 'my-n1');
                                    firstElemChild.firstElementChild.classList.add('lh-sm', 'my-n1');
                                }
                            }
                            if (actualElement.parentElement.classList.contains('text-truncate')) {
                                actualElement.classList.remove('mx-n1');
                                actualElement.classList.add('me-n1');
                                actualElement.parentElement.classList.add('ms-n1');
                            }
                            if (actualElement?.parentElement.classList.contains('gap-2')) {
                                actualElement.classList.remove('px-1', 'mx-n1');
                                actualElement.classList.add('ps-1', 'pe-2', 'ms-n1', 'me-n2');
                            }
                            if (actualElement?.parentElement?.parentElement.classList.contains('gap-2')) {
                                actualElement.classList.remove('px-1', 'mx-n1');
                                actualElement.classList.add('ps-1', 'pe-2', 'ms-n1', 'me-n2');
                                if (actualElement.parentElement.classList.contains('me-1')) {
                                    actualElement.parentElement.classList.remove('me-1');
                                }
                            }

                            actualElement.dataset.uid = tmpId
                        }

                        let content = actualElement.textContent.trim().toLowerCase();
                        if (content.includes('(')) {
                            content = content.replace('(', ' (').replace(/\s\s+/g, ' ')
                        }
                        if (content.includes('\n')) {
                            content = content.replace(/\s\s+/g, ' ')
                        }
                        if (actualElement.getAttribute('data-highlight-value')) {
                            content = actualElement.getAttribute('data-highlight-value').toLowerCase();
                        }
                        if (actualElement.querySelector('[data-highlight-value]')) {
                            content = actualElement.querySelector('[data-highlight-value]').getAttribute('data-highlight-value').toLowerCase();
                        }
                        if (actualElement.getAttribute('data-highlight-target')) {
                            content = actualElement.getAttribute('data-highlight-target').toLowerCase();
                        } else if (actualElement.parentNode.getAttribute('data-highlight-target')) {
                            content = actualElement.parentNode.getAttribute('data-highlight-target').toLowerCase();
                        } else if (actualElement.parentNode.parentNode.parentNode.getAttribute("data-highlight-target")) {
                            content = actualElement.parentNode.parentNode.parentNode.getAttribute("data-highlight-target").toLowerCase();
                            if (actualElement.parentNode.parentNode.parentNode?.parentNode.tagName === "TD" && actualElement.parentNode.parentNode.parentNode.classList.contains('d-flex')) {
                                actualElement.parentNode.parentNode.parentNode.classList.replace('d-flex', 'd-inline-flex')
                            }
                        } else if (actualElement.querySelector(['[data-highlight-target]'])) {
                            content = actualElement.querySelector(['[data-highlight-target]']).getAttribute('data-highlight-target').toLowerCase();
                        }

                        if (content) {
                            if (!TextHighlight.cacheEL.hasOwnProperty(actualElement.dataset.uid)) {
                                TextHighlight.cacheEL[actualElement.dataset.uid] = actualElement
                            }

                            if (!TextHighlight.contentMap[content]) {
                                TextHighlight.contentMap[content] = [];
                            }

                            TextHighlight.contentMap[content].push(TextHighlight.cacheEL[actualElement.dataset.uid]);
                        }
                    }
                    );
                }
                );
                rows.forEach(row => {
                    var cells = Array.from(row.querySelectorAll('td:not([style*="display:none"]):not([style*="display: none"])'));
                    cells.forEach((cell, index) => {
                        if (cell && cell.getAttribute('colspan')) {
                            const colspanValue = cell.colSpan
                            if (colspanValue > 1) {
                                for (let i = 1; i < colspanValue; i++) {
                                    cells.splice(index + i, 0, null);
                                }
                            }
                        }
                    }
                    );
                    highlightIndices.forEach(index => {
                        const cell = cells[index];
                        if (!cell)
                            return;
                        cell.addEventListener("mouseenter", doMouseEnter);
                        cell.addEventListener("mouseleave", doMouseLeave);
                    }
                    );
                }
                );
            });
        }
        ; function doMouseEnter() {
            const nestedElement = this.querySelector("*");
            const actualElement = nestedElement && nestedElement.textContent.trim() ? nestedElement : this;
            let content = actualElement.textContent.trim().toLowerCase();
            if (content.includes('(')) {
                content = content.replace('(', ' (').replace(/\s\s+/g, ' ')
            }
            if (content.includes('\n')) {
                content = content.replace(/\s\s+/g, ' ');
            }
            let isDone = false
            if (actualElement.parentNode.tagName === "TD") {
                if (actualElement.attributes && actualElement.hasAttribute('data-highlight-target')) {
                    content = actualElement.getAttribute('data-highlight-target').toLowerCase();
                    isDone = true
                }
                if (isDone === false) {
                    const firstMatch = this.querySelector('[data-highlight-target]');
                    if (firstMatch) {
                        content = firstMatch.getAttribute('data-highlight-target').toLowerCase();
                        isDone = true
                    }
                }
                if (isDone === false && actualElement.children && actualElement.children.length > 0) {
                    for (const child of actualElement.children) {
                        if (child.attributes && child.hasAttribute('data-highlight-target')) {
                            content = child.getAttribute('data-highlight-target').toLowerCase();
                            isDone = true
                            break;
                        }
                    }
                }
                if (isDone === false && actualElement.firstElementChild && actualElement.firstElementChild.children && actualElement.firstElementChild.children.length > 0) {
                    for (const child of actualElement.firstElementChild.children) {
                        if (child.attributes && child.hasAttribute('data-highlight-target')) {
                            content = child.getAttribute('data-highlight-target').toLowerCase();
                            isDone = true
                            break;
                        }
                        if (child.children.length > 0 && child.children[0].hasAttribute('data-highlight-target')) {
                            content = child.children[0].getAttribute('data-highlight-target').toLowerCase();
                            isDone = true
                            break;
                        }
                    }
                }
                if (actualElement.querySelector('[data-highlight-value]')) {
                    content = actualElement.querySelector('[data-highlight-value]').getAttribute('data-highlight-value').toLowerCase();
                }
            } else {
                if (actualElement.hasAttribute('data-highlight-value')) {
                    if (actualElement.getAttribute('data-highlight-value')) {
                        content = actualElement.getAttribute('data-highlight-value').toLowerCase()
                    }
                }
                if (actualElement.attributes && actualElement.hasAttribute('data-highlight-target')) {
                    content = actualElement.getAttribute('data-highlight-target').toLowerCase();
                } else if (actualElement.parentNode && actualElement.parentNode.attributes && actualElement.parentNode.hasAttribute('data-highlight-target')) {
                    content = actualElement.parentNode.getAttribute('data-highlight-target').toLowerCase();
                } else if (actualElement.querySelector('[data-highlight-target]')) {
                    content = actualElement.querySelector('[data-highlight-target]').getAttribute('data-highlight-target').toLowerCase();
                } else {
                    for (const child of actualElement.children) {
                        if (child.attributes && child.hasAttribute('data-highlight-target')) {
                            content = child.getAttribute('data-highlight-target').toLowerCase();
                            break;
                        }
                    }
                }
            }
            if (!(content.startsWith("Create: ") || content.startsWith("Contract Creation"))) {
                try {
                    TextHighlight.contentMap[content].forEach(matchingElement => {
                        if (matchingElement.parentNode.parentNode.parentNode.getAttribute("data-highlight-target")) {
                            matchingElement = matchingElement.parentNode.parentNode.parentNode;
                        }
                        let privateNameTagInChild = matchingElement.querySelector(privateNametagMarker.split(' ').map(cls => `.${cls}`).join(''));
                        if (privateNameTagInChild) {
                            matchingElement = privateNameTagInChild;
                        }
                        initialClasses = defaultInitialClasses;
                        classes = defaultHighlightClasses;
                        matchingElement.style.setProperty('--bs-border-opacity', '1');
                        if (matchingElement.hasAttribute('data-highlight-value')) {
                            if (matchingElement.previousElementSibling?.tagName === 'I') {
                                classes = classes.replace(' mx-n1', '');
                            }
                            if (matchingElement.classList.contains('me-2') || matchingElement.classList.contains('prev-me-1')) {
                                classes = classes.replace('mx-n1', 'ms-n1');
                            }
                            if (matchingElement.parentNode?.classList.contains('font-monospace')) {
                                classes = classes.replace(' mx-n1', '');
                            }
                            matchingElement.style.removeProperty('--bs-border-opacity');
                        }
                        if (hasAllClasses(matchingElement, privateNametagMarker)) {
                            initialClasses = privateNametagInitialClasses;
                            classes = privateNametagHighlightClasses;
                            matchingElement.style.removeProperty('--bs-border-opacity');
                        }
                        if (hasAllClasses(matchingElement, methodMarker)) {
                            initialClasses = methodInitialClasses;
                            classes = methodHighlightClasses;
                        }
                        if (!matchingElement.hasAttribute('data-highlight-pos-value')) {
                            if (matchingElement.classList.contains('prev-me-1')) {
                                classes = classes.replace('mx-n1', 'ms-n1');
                                matchingElement.classList.remove('me-1')
                            }
                            if (matchingElement.parentElement.classList.contains('text-truncate')) {
                                initialClasses = initialClasses.replace('mx-n1', 'me-n1');
                                classes = classes.replace('mx-n1', 'me-n1');
                            }
                            matchingElement.classList.remove(...initialClasses.split(" "));
                            matchingElement.classList.add(...classes.split(" "));
                        } else {
                            matchingElement = matchingElement.querySelector('span.js-highlight-span');
                            matchingElement.classList.remove('border-white');
                            matchingElement.classList.add('border-warning', 'bg-warning');
                        }
                    }
                    );
                } catch (e) {
                    console.error('Error:', e);
                }
            }
        }
        function doMouseLeave() {
            const nestedElement = this.querySelector("*");
            const actualElement = nestedElement && nestedElement.textContent.trim() ? nestedElement : this;
            let content = actualElement.textContent.trim().toLowerCase();
            if (content.includes('(')) {
                content = content.replace('(', ' (').replace(/\s\s+/g, ' ')
            }
            if (content.includes('\n')) {
                content = content.replace(/\s\s+/g, ' ')
            }
            let isDone = false
            if (actualElement.parentNode.tagName === "TD") {
                if (actualElement.attributes && actualElement.hasAttribute('data-highlight-target')) {
                    content = actualElement.getAttribute('data-highlight-target').toLowerCase();
                    isDone = true
                }
                if (isDone === false) {
                    const firstMatch = this.querySelector('[data-highlight-target]');
                    if (firstMatch) {
                        content = firstMatch.getAttribute('data-highlight-target').toLowerCase();
                        isDone = true
                    }
                }
                if (isDone === false && actualElement.children.length > 0) {
                    for (const child of actualElement.children) {
                        if (child.attributes && child.hasAttribute('data-highlight-target')) {
                            content = child.getAttribute('data-highlight-target').toLowerCase();
                            isDone = true
                            break;
                        }
                    }
                }
                if (isDone === false && actualElement.firstElementChild && actualElement.firstElementChild.children && actualElement.firstElementChild.children.length > 0) {
                    for (const child of actualElement.firstElementChild.children) {
                        if (child.attributes && child.hasAttribute('data-highlight-target')) {
                            content = child.getAttribute('data-highlight-target').toLowerCase();
                            isDone = true
                            break;
                        }
                        if (child.children.length > 0 && child.children[0].hasAttribute('data-highlight-target')) {
                            content = child.children[0].getAttribute('data-highlight-target').toLowerCase();
                            isDone = true
                            break;
                        }
                    }
                }
                if (actualElement.querySelector('[data-highlight-value]')) {
                    content = actualElement.querySelector('[data-highlight-value]').getAttribute('data-highlight-value').toLowerCase();
                }
            } else {
                if (actualElement.hasAttribute('data-highlight-value')) {
                    if (actualElement.getAttribute('data-highlight-value')) {
                        content = actualElement.getAttribute('data-highlight-value').toLowerCase()
                    }
                }
                if (actualElement.attributes && actualElement.hasAttribute('data-highlight-target')) {
                    content = actualElement.getAttribute('data-highlight-target').toLowerCase();
                } else if (actualElement.parentNode && actualElement.parentNode.attributes && actualElement.parentNode.hasAttribute('data-highlight-target')) {
                    content = actualElement.parentNode.getAttribute('data-highlight-target').toLowerCase();
                } else if (actualElement.querySelector('[data-highlight-target]')) {
                    content = actualElement.querySelector('[data-highlight-target]').getAttribute('data-highlight-target').toLowerCase();
                } else {
                    for (const child of actualElement.children) {
                        if (child.attributes && child.hasAttribute('data-highlight-target')) {
                            content = child.getAttribute('data-highlight-target').toLowerCase();
                            break;
                        }
                    }
                }
            }
            if (!(content.startsWith("Create: ") || content.startsWith("Contract Creation"))) {
                try {
                    TextHighlight.contentMap[content].forEach(matchingElement => {
                        if (matchingElement.parentNode.parentNode.parentNode.getAttribute("data-highlight-target")) {
                            matchingElement = matchingElement.parentNode.parentNode.parentNode;
                        }
                        let privateNameTagInChild = matchingElement.querySelector(privateNametagMarker.split(' ').map(cls => `.${cls}`).join(''));
                        if (privateNameTagInChild) {
                            matchingElement = privateNameTagInChild;
                        }
                        initialClasses = defaultInitialClasses;
                        classes = defaultHighlightClasses;
                        matchingElement.style.setProperty('--bs-border-opacity', '0');
                        if (matchingElement.hasAttribute('data-highlight-value')) {
                            classes = defaultHighlightClasses
                            if (matchingElement.previousElementSibling?.tagName === 'I') {
                                initialClasses = initialClasses.replace(' mx-n1', '');
                            }
                            if (matchingElement.classList.contains('me-2') || matchingElement.classList.contains('prev-me-1')) {
                                initialClasses = initialClasses.replace('mx-n1', 'ms-n1');
                            }
                            if (matchingElement.parentNode?.classList.contains('font-monospace')) {
                                initialClasses = initialClasses.replace(' mx-n1', '');
                            }
                            matchingElement.style.removeProperty('--bs-border-opacity');
                        }
                        if (hasAllClasses(matchingElement, privateNametagMarker)) {
                            initialClasses = privateNametagInitialClasses;
                            classes = privateNametagHighlightClasses;
                            matchingElement.style.removeProperty('--bs-border-opacity');
                        }
                        if (hasAllClasses(matchingElement, methodMarker)) {
                            initialClasses = methodInitialClasses;
                            classes = methodHighlightClasses;
                            matchingElement.style.removeProperty('--bs-border-opacity');
                        }
                        if (!matchingElement.hasAttribute('data-highlight-pos-value')) {
                            if (matchingElement.classList.contains('prev-me-1')) {
                                initialClasses = initialClasses.replace('px-1 mx-n1', 'me-1');
                                matchingElement.classList.remove('ms-n1')
                            }
                            if (matchingElement.parentElement.classList.contains('text-truncate')) {
                                initialClasses = initialClasses.replace('mx-n1', 'me-n1');
                                classes = classes.replace('mx-n1', 'me-n1');
                            }
                            matchingElement.classList.remove(...classes.split(" "));
                            matchingElement.classList.add(...initialClasses.split(" "));
                        } else {
                            matchingElement = matchingElement.querySelector('span.js-highlight-span');
                            matchingElement.classList.remove('border-warning', 'bg-warning');
                            matchingElement.classList.add('border-white');
                        }
                    }
                    );
                } catch (e) {
                    console.error('Error:', e);
                }
            }
        }
        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) === ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) === 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
        function deserializeSettings() {
            const decodedCookie = getCookie(siteName + "_isHighlight");
            if (decodedCookie === "false") {
                return false;
            } else {
                return true;
            }
        }
        if (this.count == 0) {
            this.isHightlight = deserializeSettings()
            this.count = 1
        }
        if (this.isHightlight) {
            if (flag === "1") {
                doHighlight();
            } else {
                document.addEventListener("DOMContentLoaded", doHighlight());
            }
        }
    }
};