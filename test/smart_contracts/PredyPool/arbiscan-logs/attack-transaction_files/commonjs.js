var strAge = $("#hdnAgeText").val();
var strDateTime = $("#hdnDateTimeText").val();
var strDateTimeLocal = "Date Time (Local)";
var strDateTimeLocalShort = "Local";
var strSiteName = $("#hdnSiteName").val();

var strAgeTitle = $("#hdnAgeTitle").val();
var strDateTimeTitle = $("#hdnDateTimeTitle").val();

var ageClass = ".showAge";
var dateTimeClass = ".showDate";
var localDateTimeClass = ".showLocalDate"
var localDateTimeNFTClass = ".showLocalDateNFT"
var offsetHoursFinal;

var strTxnFee = $("#hdnTxnText").val();
var strGasPrice = $("#hdnGasPriceText").val();

function checkAdBlock() {
    var element = document.createElement("div");
    element.id = "checkAdBlock"
    element.className = "banner_ad";
    element.style.width = "0.5px";
    document.body.appendChild(element);
    if ($("#checkAdBlock").width() > 0) {
        return false;
    } else {
        return true;
    }
}

function setAgeDateTimeCookie(strValue) {
    var d = new Date();
    d.setFullYear(d.getFullYear() + 1);
    var expires = "expires=" + d.toUTCString();
    document.cookie = strSiteName + "_switch_age_datetime=" + strValue + ";" + expires + ";path=/";
}

function onDocumentReady(isDataTable, isShortText) {
    if (isShortText) {
        strDateTime = "UTC"
    }

    if (strGlobal == "" || strGlobal == strAge) {
        $("#lnkAgeDateTime").text(strAge);
        $("#lnkAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        $(ageClass).show();
    }
    else if (strGlobal == strDateTime) {
        $("#lnkAgeDateTime").text(strDateTime);
        $("#lnkAgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();
        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkAgeDateTime").text(strDateTimeLocal);
        }
    }

    if (strGlobalFee == null || strGlobalFee == "null" || strGlobalFee == strTxnFee) {
        $(".switch-txn-fee-gas-price").text(strTxnFee);
        $(".switch-txn-fee-gas-price").attr("title", $("#hdnTxnFeeTitle").val());
        $(".showTxnFee").show();
        $(".showGasPrice").hide();
    } else if (strGlobalFee == strGasPrice) {
        $(".switch-txn-fee-gas-price").text(strGasPrice);
        $(".switch-txn-fee-gas-price").attr("title", $("#hdnGasPriceTitle").val());
        $(".showTxnFee").hide();
        $(".showGasPrice").show();
    }

    if (!isDataTable) {
        renderFnTooltip($("#lnkAgeDateTime"), 0)
        renderFnTooltip($(".switch-txn-fee-gas-price"), 0)
    }
}

function onDateAgeDocumentReady(opts) {
    strGlobal = getCookie(strSiteName + "_switch_age_datetime");
    var el = $(".hc_lnkAgeDateTime")
    var customAgeText = strAge
    var customDateTime = strDateTime

    if (typeof opts !== 'undefined') {
        if (opts.el) {
            el = $(opts.el)
        }

        if (opts.customAgeText) {
            customAgeText = opts.customAgeText
        }
        if (opts.customDateTime) {
            customDateTime = opts.customDateTime
        }
    }

    if (strGlobal == "" || strGlobal == strAge) {
        el.text(customAgeText);
        el.attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        $(ageClass).show();
    }
    else if (strGlobal == strDateTime) {
        el.text(customDateTime);
        el.attr("title", strAgeTitle);
        $(ageClass).hide();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            el.text(strDateTimeLocal);
        }

        $(dateTimeClass).show();
    }

    renderFnTooltip(el, 0)
}

function switchAgeToDateTime(data) {

    disposeFnTooltip($("#" + data.id))

    var strVal = $("#" + data.id).text();
    if (strVal == strAge) {
        $("#" + data.id).text(strDateTime);
        $("#" + data.id).attr("title", strAgeTitle);
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#" + data.id).text(strDateTimeLocal);
        }

        $(ageClass).hide();
        setAgeDateTimeCookie(strDateTime);
    }
    else if (strVal == strDateTime || strVal == strDateTimeLocal) {
        $("#" + data.id).text(strAge);
        $("#" + data.id).attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
        setAgeDateTimeCookie(strAge);
    }

    renderFnTooltip($("#" + data.id), 1)
}

function switchAgeToDateTimeV2(self, opts) {
    var strVal = $("#" + self.id).text();
    var el = self ? $(self) : $(".hc_lnkAgeDateTime")
    disposeFnTooltip(el)

    var customAgeText = strAge
    var customDateTime = strDateTime
    var elParent = ""
    var elChild = ""

    if (typeof opts !== 'undefined') {
        if (opts.el) {
            el = $(opts.el)
        }
        if (opts.customAgeText) {
            customAgeText = opts.customAgeText
        }
        if (opts.customDateTime) {
            customDateTime = opts.customDateTime
        }
        if (opts.elParent) {
            elParent = opts.elParent
        }
        if (opts.elParent) {
            elChild = opts.elChild
        }
    }
    if (strVal == customAgeText) {
        el.text(customDateTime);
        el.attr("title", strAgeTitle);
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            el.text(strDateTimeLocal);
        }

        $(ageClass).hide();
        setAgeDateTimeCookie(strDateTime);
    }
    else if (strVal == customDateTime || strVal == strDateTimeLocal) {
        el.text(customAgeText);
        el.attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
        setAgeDateTimeCookie(strAge);
    }

    renderFnTooltip(el, 1)
}

function onAddressDocReady() {
    if (strGlobal == "" || strGlobal == strAge) {
        $("#lnkTxAgeDateTime").text(strAge);
        $("#lnkTxAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkIntAgeDateTime").text(strAge);
        $("#lnkIntAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkMinBlkAgeDateTime").text(strAge);
        $("#lnkMinBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkMinUncAgeDateTime").text(strAge);
        $("#lnkMinUncAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkWithBlkAgeDateTime").text(strAge);
        $("#lnkWithBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkDepositBlkAgeDateTime").text(strAge);
        $("#lnkDepositBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkL2DepositAgeDateTime").text(strAge);
        $("#lnkL2DepositAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkWdAgeDateTime").text(strAge);
        $("#lnkWdAgeDateTime").attr("title", strDateTimeTitle);
        $("#hdnErc20").val(strAge);
        $(dateTimeClass).attr("style", "display:none !important");
        $(ageClass).show();
    }
    else if (strGlobal == strDateTime) {
        $("#lnkTxAgeDateTime").text(strDateTime);
        $("#lnkTxAgeDateTime").attr("title", strAgeTitle);
        $("#lnkIntAgeDateTime").text(strDateTime);
        $("#lnkIntAgeDateTime").attr("title", strAgeTitle);
        $("#lnkMinBlkAgeDateTime").text(strDateTime);
        $("#lnkMinBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkMinUncAgeDateTime").text(strDateTime);
        $("#lnkMinUncAgeDateTime").attr("title", strAgeTitle);
        $("#lnkWithBlkAgeDateTime").text(strDateTime);
        $("#lnkWithBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkDepositBlkAgeDateTime").text(strDateTime);
        $("#lnkDepositBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkL2DepositAgeDateTime").text(strDateTime);
        $("#lnkL2DepositAgeDateTime").attr("title", strAgeTitle);
        $("#lnkWdAgeDateTime").text(strDateTime);
        $("#lnkWdAgeDateTime").attr("title", strAgeTitle);
        $("#hdnErc20").val(strDateTime);
        $(ageClass).attr("style", "display:none !important");
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkTxAgeDateTime").text(strDateTimeLocal);
            $("#lnkIntAgeDateTime").text(strDateTimeLocal);
            $("#lnkMinBlkAgeDateTime").text(strDateTimeLocal);
            $("#lnkWithBlkAgeDateTime").text(strDateTimeLocal);
            $("#lnkDepositBlkAgeDateTime").text(strDateTimeLocal);
            $("#lnkL2DepositAgeDateTime").text(strDateTimeLocal);
            $("#lnkWdAgeDateTime").text(strDateTimeLocal);
        }
    }

    renderFnTooltip($("#lnkTxAgeDateTime"), 0)
    renderFnTooltip($("#lnkIntAgeDateTime"), 0)
    renderFnTooltip($("#lnkMinBlkAgeDateTime"), 0)
    renderFnTooltip($("#lnkMinUncAgeDateTime"), 0)
    renderFnTooltip($("#lnkWithBlkAgeDateTime"), 0)
    renderFnTooltip($("#lnkDepositBlkAgeDateTime"), 0)
    renderFnTooltip($("#lnkL2DepositAgeDateTime"), 0)
    renderFnTooltip($("#lnkWdAgeDateTime"), 0)
}

function switchAgeToDateTimeInAddPage(data) {
    disposeFnTooltip($("#lnkTxAgeDateTime"))
    disposeFnTooltip($("#lnkIntAgeDateTime"))
    disposeFnTooltip($("#lnkMinBlkAgeDateTime"))
    disposeFnTooltip($("#lnkMinUncAgeDateTime"))
    disposeFnTooltip($("#lnkWithBlkAgeDateTime"))
    disposeFnTooltip($("#lnkDepositBlkAgeDateTime"))
    disposeFnTooltip($("#lnkL2DepositAgeDateTime"))
    disposeFnTooltip($("#lnkWdAgeDateTime"))

    var strVal = $("#" + data.id).text();
    if (strVal == strAge) {
        $("#lnkTxAgeDateTime").text(strDateTime);
        $("#lnkTxAgeDateTime").attr("title", strAgeTitle);
        $("#lnkIntAgeDateTime").text(strDateTime);
        $("#lnkIntAgeDateTime").attr("title", strAgeTitle);
        $("#lnkMinBlkAgeDateTime").text(strDateTime);
        $("#lnkMinBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkMinUncAgeDateTime").text(strDateTime);
        $("#lnkMinUncAgeDateTime").attr("title", strAgeTitle);
        $("#lnkWithBlkAgeDateTime").text(strDateTime);
        $("#lnkWithBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkDepositBlkAgeDateTime").text(strDateTime);
        $("#lnkDepositBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkL2DepositAgeDateTime").text(strDateTime);
        $("#lnkL2DepositAgeDateTime").attr("title", strAgeTitle);
        $("#lnkWdAgeDateTime").text(strDateTime);
        $("#lnkWdAgeDateTime").attr("title", strAgeTitle);
        $("#hdnErc20").val(strDateTime);
        $(dateTimeClass).show();
        $(ageClass).attr("style", "display:none !important");
        setAgeDateTimeCookie(strDateTime);

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkTxAgeDateTime").text(strDateTimeLocal);
            $("#lnkIntAgeDateTime").text(strDateTimeLocal);
            $("#lnkMinBlkAgeDateTime").text(strDateTimeLocal);
            $("#lnkWithBlkAgeDateTime").text(strDateTimeLocal);
            $("#lnkDepositBlkAgeDateTime").text(strDateTimeLocal);
            $("#lnkL2DepositAgeDateTime").text(strDateTimeLocal);
            $("#lnkWdAgeDateTime").text(strDateTimeLocal);
        }

        if (document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime') != null) {
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').text = strDateTime;
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').title = strAgeTitle;
            $("#tokenpageiframe").contents().find(dateTimeClass).show();
            $("#tokenpageiframe").contents().find(ageClass).hide();
        }

        //if (document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime') != null) {
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').text = strDateTime;
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').title = strAgeTitle;
        //    $("#tokenerc721_pageiframe").contents().find(dateTimeClass).show();
        //    $("#tokenerc721_pageiframe").contents().find(ageClass).hide();
        //}

        //if (document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime') != null) {
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').text = strDateTime;
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').title = strAgeTitle;
        //    $("#tokenerc1155_pageiframe").contents().find(dateTimeClass).show();
        //    $("#tokenerc1155_pageiframe").contents().find(ageClass).hide();
        //}

        if (document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime') != null) {
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').text = strDateTime;
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').title = strAgeTitle;
            $("#loans_pageiframe").contents().find(dateTimeClass).show();
            $("#loans_pageiframe").contents().find(ageClass).hide();
        }
    }
    else if (strVal == strDateTime || strVal == strDateTimeLocal) {
        $("#lnkTxAgeDateTime").text(strAge);
        $("#lnkTxAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkIntAgeDateTime").text(strAge);
        $("#lnkIntAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkMinBlkAgeDateTime").text(strAge);
        $("#lnkMinBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkMinUncAgeDateTime").text(strAge);
        $("#lnkMinUncAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkWithBlkAgeDateTime").text(strAge);
        $("#lnkWithBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkDepositBlkAgeDateTime").text(strAge);
        $("#lnkDepositBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkL2DepositAgeDateTime").text(strAge);
        $("#lnkL2DepositAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkWdAgeDateTime").text(strAge);
        $("#lnkWdAgeDateTime").attr("title", strDateTimeTitle);
        $("#hdnErc20").val(strAge);
        $(dateTimeClass).attr("style", "display:none !important");
        $(ageClass).show();
        setAgeDateTimeCookie(strAge);

        if (document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime') != null) {
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').text = strAge;
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').title = strDateTimeTitle;
            $("#tokenpageiframe").contents().find(dateTimeClass).hide();
            $("#tokenpageiframe").contents().find(ageClass).show();
        }

        //if (document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime') != null) {
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').text = strAge;
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').title = strDateTimeTitle;
        //    $("#tokenerc721_pageiframe").contents().find(dateTimeClass).hide();
        //    $("#tokenerc721_pageiframe").contents().find(ageClass).show();
        //}

        //if (document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime') != null) {
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').text = strAge;
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').title = strDateTimeTitle;
        //    $("#tokenerc1155_pageiframe").contents().find(dateTimeClass).hide();
        //    $("#tokenerc1155_pageiframe").contents().find(ageClass).show();
        //}

        if (document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime') != null) {
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').text = strAge;
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').title = strDateTimeTitle;
            $("#loans_pageiframe").contents().find(dateTimeClass).hide();
            $("#loans_pageiframe").contents().find(ageClass).show();
        }
    }

    renderFnTooltip($("#lnkTxAgeDateTime"), (data.id === "lnkTxAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkIntAgeDateTime"), (data.id === "lnkIntAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkMinBlkAgeDateTime"), (data.id === "lnkMinBlkAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkMinUncAgeDateTime"), (data.id === "lnkMinUncAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkWithBlkAgeDateTime"), (data.id === "lnkWithBlkAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkDepositBlkAgeDateTime"), (data.id === "lnkDepositBlkAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkL2DepositAgeDateTime"), (data.id === "lnkL2DepositAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkWdAgeDateTime"), (data.id === "lnkWdAgeDateTime" ? 1 : 0))
}

function setGlobalValue(data) {
    var strVal = $("#" + data.id).val();
    if (strVal == "" || strVal == strAge) {
        setAgeDateTimeCookie(strAge);
        switchAgeDateTimeFromIframe(data);
    }
    else if (strVal == strDateTime) {
        setAgeDateTimeCookie(strDateTime);
        switchAgeDateTimeFromIframe(data);
    }
}

function switchAgeDateTimeFromIframe(data) {
    disposeFnTooltip($("#lnkTxAgeDateTime"))
    disposeFnTooltip($("#lnkIntAgeDateTime"))
    disposeFnTooltip($("#lnkMinBlkAgeDateTime"))
    disposeFnTooltip($("#lnkMinUncAgeDateTime"))
    disposeFnTooltip($("#lnkWithBlkAgeDateTime"))
    disposeFnTooltip($("#lnkDepositBlkAgeDateTime"))

    var strVal = $("#" + data.id).val();
    if (strVal == strDateTime) {
        $("#lnkTxAgeDateTime").text(strDateTime);
        $("#lnkTxAgeDateTime").attr("title", strAgeTitle);
        $("#lnkIntAgeDateTime").text(strDateTime);
        $("#lnkIntAgeDateTime").attr("title", strAgeTitle);
        $("#lnkMinBlkAgeDateTime").text(strDateTime);
        $("#lnkMinBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkMinUncAgeDateTime").text(strDateTime);
        $("#lnkMinUncAgeDateTime").attr("title", strAgeTitle);
        $("#lnkWithBlkAgeDateTime").text(strDateTime);
        $("#lnkWithBlkAgeDateTime").attr("title", strAgeTitle);
        $("#lnkDepositBlkAgeDateTime").text(strDateTime);
        $("#lnkDepositBlkAgeDateTime").attr("title", strAgeTitle);
        $(dateTimeClass).show();

        $(ageClass).attr("style", "display:none !important");

        if (document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime') != null) {
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').text = strDateTime;
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').title = strAgeTitle;
            $("#tokenpageiframe").contents().find(dateTimeClass).show();
            $("#tokenpageiframe").contents().find(ageClass).hide();

            //check display UTC or Local datetime
            convertUtcToLocalDateTime();
            //show UTC with timezone on column header
            if (offsetHoursFinal !== undefined) {
                document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').text = strDateTimeLocal;
            }
        }

        //if (document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime') != null) {
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').text = strDateTime;
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').title = strAgeTitle;
        //    $("#tokenerc721_pageiframe").contents().find(dateTimeClass).show();
        //    $("#tokenerc721_pageiframe").contents().find(ageClass).hide();
        //}

        //if (document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime') != null) {
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').text = strDateTime;
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').title = strAgeTitle;
        //    $("#tokenerc1155_pageiframe").contents().find(dateTimeClass).show();
        //    $("#tokenerc1155_pageiframe").contents().find(ageClass).hide();
        //}

        if (document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime') != null) {
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').text = strDateTime;
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').title = strAgeTitle;
            $("#loans_pageiframe").contents().find(dateTimeClass).show();
            $("#loans_pageiframe").contents().find(ageClass).hide();
        }
    }
    else if (strVal == strAge) {
        $("#lnkTxAgeDateTime").text(strAge);
        $("#lnkTxAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkIntAgeDateTime").text(strAge);
        $("#lnkIntAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkMinBlkAgeDateTime").text(strAge);
        $("#lnkMinBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkMinUncAgeDateTime").text(strAge);
        $("#lnkMinUncAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkWithBlkAgeDateTime").text(strAge);
        $("#lnkWithBlkAgeDateTime").attr("title", strDateTimeTitle);
        $("#lnkDepositBlkAgeDateTime").text(strAge);
        $("#lnkDepositBlkAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).attr("style", "display:none !important");
        $(ageClass).show();

        if (document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime') != null) {
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').text = strAge;
            document.getElementById('tokenpageiframe').contentWindow.document.getElementById('lnkErc20AgeDateTime').title = strDateTimeTitle;
            $("#tokenpageiframe").contents().find(dateTimeClass).hide();
            $("#tokenpageiframe").contents().find(ageClass).show();
        }

        //if (document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime') != null) {
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').text = strAge;
        //    document.getElementById('tokenerc721_pageiframe').contentWindow.document.getElementById('lnkErc721AgeDateTime').title = strDateTimeTitle;
        //    $("#tokenerc721_pageiframe").contents().find(dateTimeClass).hide();
        //    $("#tokenerc721_pageiframe").contents().find(ageClass).show();
        //}

        //if (document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime') != null) {
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').text = strAge;
        //    document.getElementById('tokenerc1155_pageiframe').contentWindow.document.getElementById('lnkErc1155AgeDateTime').title = strDateTimeTitle;
        //    $("#tokenerc1155_pageiframe").contents().find(dateTimeClass).hide();
        //    $("#tokenerc1155_pageiframe").contents().find(ageClass).show();
        //}

        if (document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime') != null) {
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').text = strAge;
            document.getElementById('loans_pageiframe').contentWindow.document.getElementById('lnkLoanAgeDateTime').title = strDateTimeTitle;
            $("#loans_pageiframe").contents().find(dateTimeClass).hide();
            $("#loans_pageiframe").contents().find(ageClass).show();
        }
    }

    renderFnTooltip($("#lnkTxAgeDateTime"), (data.id === "lnkTxAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkIntAgeDateTime"), (data.id === "lnkIntAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkMinBlkAgeDateTime"), (data.id === "lnkMinBlkAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkMinUncAgeDateTime"), (data.id === "lnkMinUncAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkWithBlkAgeDateTime"), (data.id === "lnkWithBlkAgeDateTime" ? 1 : 0))
    renderFnTooltip($("#lnkDepositBlkAgeDateTime"), (data.id === "lnkDepositBlkAgeDateTime" ? 1 : 0))
}

function onAddTokenDocReady() {
    var obj = window.parent.document.getElementById('hdnErc20');
    if (obj.value == "" || obj.value == strAge) {
        $("#lnkErc20AgeDateTime").text(strAge);
        $("#lnkErc20AgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkErc20AgeDateTime").text(strDateTime);
        $("#lnkErc20AgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkErc20AgeDateTime").text(strDateTimeLocal);
        }


    }

    renderFnTooltip($("#lnkErc20AgeDateTime"), 0)
}

function switchAgeToDateTimeAddToken(data) {

    disposeFnTooltip($("#" + data.id))
    var strVal = $("#" + data.id).text();
    if (strVal == strAge) {
        $("#" + data.id).text(strDateTime);
        $("#" + data.id).attr("title", strAgeTitle);
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#" + data.id).text(strDateTimeLocal);
        }

        $(ageClass).hide();
        var obj = window.parent.document.getElementById('hdnErc20');
        obj.value = strDateTime;
        parent.setGlobalValue(obj);
    }
    else if (strVal == strDateTime || strVal == strDateTimeLocal) {
        $("#" + data.id).text(strAge);
        $("#" + data.id).attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
        var obj = window.parent.document.getElementById('hdnErc20');
        obj.value = strAge;
        parent.setGlobalValue(obj);
    }

    renderFnTooltip($("#" + data.id), 1)
}

function onERC721DocReady() {
    var obj = window.parent.document.getElementById('hdnErc20');
    if (obj.value == "" || obj.value == strAge) {
        $("#lnkErc721AgeDateTime").text(strAge);
        $("#lnkErc721AgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkErc721AgeDateTime").text(strDateTime);
        $("#lnkErc721AgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();
    }

    renderFnTooltip($("#lnkErc721AgeDateTime"), 0)
}

function switchAgeToDateTimeERC721Token(data) {
    disposeFnTooltip($("#" + data.id))
    var strVal = $("#" + data.id).text();
    if (strVal == strAge) {
        $("#" + data.id).text(strDateTime);
        $("#" + data.id).attr("title", strAgeTitle);
        $(dateTimeClass).show();
        $(ageClass).hide();
        var obj = window.parent.document.getElementById('hdnErc20');
        obj.value = strDateTime;
        parent.setGlobalValue(obj);
    }
    else if (strVal == strDateTime) {
        $("#" + data.id).text(strAge);
        $("#" + data.id).attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
        var obj = window.parent.document.getElementById('hdnErc20');
        obj.value = strAge;
        parent.setGlobalValue(obj);
    }

    renderFnTooltip($("#" + data.id), 1)
}

function onERC1155DocReady() {
    var obj = window.parent.document.getElementById('hdnErc20');
    if (obj.value == "" || obj.value == strAge) {
        $("#lnkErc1155AgeDateTime").text(strAge);
        $("#lnkErc1155AgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkErc1155AgeDateTime").text(strDateTime);
        $("#lnkErc1155AgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();
    }

    renderFnTooltip($("#lnkErc1155AgeDateTime"), 0)
}

function onBridgeDepositDocReady() {
    var obj = window.parent.document.getElementById('hdnErc20');
    if (obj.value == "" || obj.value == strAge) {
        $("#lnkBridgeDepositAgeDateTime").text(strAge);
        $("#lnkBridgeDepositAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkBridgeDepositAgeDateTime").text(strDateTime);
        $("#lnkBridgeDepositAgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkBridgeDepositAgeDateTime").text(strDateTimeLocal);
        }
    }
    $("#lnkBridgeDepositAgeDateTime").attr("data-toggle-commonjs", "tooltip");
    $("[data-toggle-commonjs='tooltip']").tooltip();
}

function onRewardDocReady() {
    var obj = window.parent.document.getElementById('hdnErc20');
    if (obj.value == "" || obj.value == strAge) {
        $("#lnkRewardAgeDateTime").text(strAge);
        $("#lnkRewardAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkRewardAgeDateTime").text(strDateTime);
        $("#lnkRewardAgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkRewardAgeDateTime").text(strDateTimeLocal);
        }
    }
    $("#lnkRewardAgeDateTime").attr("data-toggle-commonjs", "tooltip");
    $("[data-toggle-commonjs='tooltip']").tooltip();
}

function clearGlobalValue() {
    strGlobal = "";
    document.cookie = strSiteName + "_switch_age_datetime=" + strGlobal;
}

function onTokenTxnsDocReady() {
    var obj = window.parent.document.getElementById('hdnTokenTxns2');
    if (obj.value == "" || obj.value == "null" || obj.value == strAge) {
        $("#lnkTokenTxnsAgeDateTime").text(strAge);
        $("#lnkTokenTxnsAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkTokenTxnsAgeDateTime").text(strDateTime);
        $("#lnkTokenTxnsAgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkTokenTxnsAgeDateTime").text(strDateTimeLocal);
        }
    }

    renderFnTooltip($("#lnkTokenTxnsAgeDateTime"), 0)
}

function switchAgeToDateTimeTokenTxns(data) {
    disposeFnTooltip($("#" + data.id))
    var strVal = $("#" + data.id).text();
    if (strVal == strAge) {
        $("#" + data.id).text(strDateTime);
        $("#" + data.id).attr("title", strAgeTitle);
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#" + data.id).text(strDateTimeLocal);
        }

        $(ageClass).hide();
        var obj = window.parent.document.getElementById('hdnTokenTxns2');
        obj.value = strDateTime;
        parent.setGlobalTokenValue(obj);
    }
    else if (strVal == strDateTime || strVal == strDateTimeLocal) {
        $("#" + data.id).text(strAge);
        $("#" + data.id).attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
        var obj = window.parent.document.getElementById('hdnTokenTxns2');
        obj.value = strAge;
        parent.setGlobalTokenValue(obj);
    }

    renderFnTooltip($("#" + data.id), 1)
}

function onAddLoanDocReady() {
    var obj = window.parent.document.getElementById('hdnErc20');
    if (obj.value == "" || obj.value == strAge) {
        $("#lnkLoanAgeDateTime").text(strAge);
        $("#lnkLoanAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkLoanAgeDateTime").text(strDateTime);
        $("#lnkLoanAgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();
    }

    renderFnTooltip($("#lnkLoanAgeDateTime"), 0)
}

function onDexTradeDocReady() {
    var obj = window.parent.document.getElementById('hdnTokenTxns2');
    if (obj.value == "" || obj.value == "null" || obj.value == strAge) {
        $("#lnkDexTradeAgeDateTime").text(strAge);
        $("#lnkDexTradeAgeDateTime").attr("title", strDateTimeTitle);
        $(dateTimeClass).hide();
        $(ageClass).show();
    }
    else if (obj.value == strDateTime) {
        $("#lnkDexTradeAgeDateTime").text(strDateTime);
        $("#lnkDexTradeAgeDateTime").attr("title", strAgeTitle);
        $(ageClass).hide();
        $(dateTimeClass).show();
        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            $("#lnkDexTradeAgeDateTime").text(strDateTimeLocal);
        }
    }

    renderFnTooltip($("#lnkDexTradeAgeDateTime"), 0)
}

function switchTxFeeGasPrice(self) {
    disposeFnTooltip(self ? $(self) : $(".switch-txn-fee-gas-price"))

    var strVal = self ? $(self).text() : $(".switch-txn-fee-gas-price").text();
    if (strVal == strTxnFee) {
        $(".switch-txn-fee-gas-price").text(strGasPrice);
        $(".switch-txn-fee-gas-price").attr("title", $("#hdnGasPriceTitle").val());
        $(".showGasPrice").show();
        $(".showTxnFee").hide();
        sessionStorage.setItem("ShowFee", strGasPrice);
    }
    else if (strVal == strGasPrice) {
        $(".switch-txn-fee-gas-price").text(strTxnFee);
        $(".switch-txn-fee-gas-price").attr("title", $("#hdnTxnFeeTitle").val());
        $(".showGasPrice").hide();
        $(".showTxnFee").show();
        sessionStorage.setItem("ShowFee", strTxnFee);
    }

    if (self) {
        renderFnTooltip($(self), 1)
    } else {
        renderFnTooltip($(".switch-txn-fee-gas-price"), 1)
    }

}
function setGlobalTokenValue(data) {
    var strVal = $("#" + data.id).val();
    if (strVal == "" || strVal == strAge) {
        setAgeDateTimeCookie(strAge);
        switchAgeDateTimeInTokenIframe(data);
    }
    else if (strVal == strDateTime) {
        setAgeDateTimeCookie(strDateTime);
        switchAgeDateTimeInTokenIframe(data);
    }
}

function switchAgeDateTimeInTokenIframe(data) {
    var strVal = $("#" + data.id).val();
    if (strVal == strDateTime) {
        if (document.getElementById('tokentxnsiframe').contentWindow.document.getElementById('lnkTokenTxnsAgeDateTime') != null) {
            document.getElementById('tokentxnsiframe').contentWindow.document.getElementById('lnkTokenTxnsAgeDateTime').text = strDateTime;
            document.getElementById('tokentxnsiframe').contentWindow.document.getElementById('lnkTokenTxnsAgeDateTime').title = strAgeTitle;
            $("#tokentxnsiframe").contents().find(dateTimeClass).show();
            $("#tokentxnsiframe").contents().find(ageClass).hide();
        }

        if (document.getElementById('dextrackeriframe').contentWindow.document.getElementById('lnkDexTradeAgeDateTime') != null) {
            document.getElementById('dextrackeriframe').contentWindow.document.getElementById('lnkDexTradeAgeDateTime').text = strDateTime;
            document.getElementById('dextrackeriframe').contentWindow.document.getElementById('lnkDexTradeAgeDateTime').title = strAgeTitle;
            $("#dextrackeriframe").contents().find(dateTimeClass).show();
            $("#dextrackeriframe").contents().find(ageClass).hide();
        }
    }
    else if (strVal == strAge) {
        if (document.getElementById('tokentxnsiframe').contentWindow.document.getElementById('lnkTokenTxnsAgeDateTime') != null) {
            document.getElementById('tokentxnsiframe').contentWindow.document.getElementById('lnkTokenTxnsAgeDateTime').text = strAge;
            document.getElementById('tokentxnsiframe').contentWindow.document.getElementById('lnkTokenTxnsAgeDateTime').title = strDateTimeTitle;
            $("#tokentxnsiframe").contents().find(dateTimeClass).hide();
            $("#tokentxnsiframe").contents().find(ageClass).show();
        }

        if (document.getElementById('dextrackeriframe').contentWindow.document.getElementById('lnkDexTradeAgeDateTime') != null) {
            document.getElementById('dextrackeriframe').contentWindow.document.getElementById('lnkDexTradeAgeDateTime').text = strAge;
            document.getElementById('dextrackeriframe').contentWindow.document.getElementById('lnkDexTradeAgeDateTime').title = strDateTimeTitle;
            $("#dextrackeriframe").contents().find(dateTimeClass).hide();
            $("#dextrackeriframe").contents().find(ageClass).show();
        }
    }
}

function disposeFnTooltip(el, type) {
    el.tooltip("dispose");
}

function renderFnTooltip(el, type) {
    if (type === 1) {
        el.tooltip("toggle");
    } else {
        el.attr("data-bs-toggle", "tooltip");
        el.tooltip();
    }
}

myFn_boxExpand = {
    actionParam: "",
    toggleAction: "",
    spinner: '<div class="popover popover-body pagecustom_popover" id="spinner-wrapper" style="height: 40px!important;"><i class="fas fa-circle-notch fa-spin spinner-wrapper__icon position-relativer text-primary fa-2x mb-2" style="top: unset"></i></div>',
    init: function (strElement, toggleAction, actionParam) {
        var self = this;
        self.actionParam = actionParam
        self.toggleAction = toggleAction

        $(strElement).on("click", function (e) {
            self.fnClick(e)
        });
    },
    fnClick: function (e) {
        var target = e.currentTarget
        $(target).off('click');
        e.preventDefault();
        e.stopPropagation();

        var self = this;
        self.fnProcess(e, function () {
            self.fnOnClick(target)
        });
    },
    fnOnClick: function (target) {
        var self = this;
        $(target).on("click", function (e) {
            self.fnClick(e)
        });
    },
    fnProcess_Popover: function (e, callback) {
        var self = this;
        var el = $(e.currentTarget);

        if (!el.attr("data-bs-content")) {
            el.popover({
                trigger: 'manual',
                html: true,
                placement: 'right',
                content: self.spinner,
                boundary: "window"
            }).popover("show");

            var el_parent_tr = el.parents("tr");
            var str_el_next = el_parent_tr.find('.myFnExpandBox_searchVal').text()
            self.expandBox(0, str_el_next, function (data) {
                el.attr('data-bs-content', data);
                el.popover("show")
            })

            el.click(function () {
                $(this).popover('toggle');
            }).blur(function () {
                //$(this).popover('hide');
                var _this = this;
                setTimeout(function () {
                    $(_this).popover('hide');
                }, 150);
            });
        }
    },
    fnProcess_Popover_Data: function (e, callback) {
        var self = this;
        var el = $(e.currentTarget);

        if (!el.attr("data-bs-content")) {
            el.popover({
                trigger: 'manual',
                html: true,
                placement: 'right',
                content: self.spinner,
            }).popover("show");

            var el_parent_tr = el.parents("tr");
            var str_el_next = el_parent_tr.find('.myFnExpandBox_withData').attr("box-data");
            var str_el_headers = el_parent_tr.find('.myFnExpandBox_withData').attr("box-header");
            self.expandBoxWithData(str_el_next.split(','), str_el_headers.split(','), function (data) {
                el.attr('data-bs-content', data);
                el.popover("show")
            })

            el.click(function () {
                $(this).popover('toggle');
            }).blur(function () {
                var _this = this;
                setTimeout(function () {
                    $(_this).popover('hide');
                }, 150);
            });
        }
    },
    fnProcess_Table: function (e, callback) {
        var self = this;
        var el = $(e.currentTarget);
        var el_parent_tr = el.parents("tr");
        var str_el_next = el_parent_tr.find('.myFnExpandBox_searchVal').text()
        var el_parent_tr__child_length = el_parent_tr.children().length;
        var el_parent_tr_next = ""

        if (el.hasClass("myfn_boxExpand_open")) {
            el_parent_tr_next = el_parent_tr.next(".myExpandBox");

            el.removeClass("myfn_boxExpand_open");
            el.addClass("fa-chevron-up");
            el.removeClass("fa-chevron-down");

            el_parent_tr_next.remove();
            callback()
        } else {
            el.addClass("myfn_boxExpand_open");
            el.removeClass("fa-chevron-up");
            el.addClass("fa-chevron-down");

            el_parent_tr.after('<tr class="myExpandBox"><td colspan="' + el_parent_tr__child_length + '" style="white-space: unset;padding-top:1.25rem;">' + self.spinner + '</td></tr>');
            self.expandBox(el_parent_tr__child_length, str_el_next, function (data) {
                el_parent_tr_next = el_parent_tr.next(".myExpandBox");
                el_parent_tr_next.remove();

                el_parent_tr.after(data);
                $.HSCore.components.HSClipboard.init('.js-clipboard');
                $.HSCore.components.HSMalihuScrollBar.init($('.js-scrollbar'));
                callback()
            });
        }
    },
    fnProcess: function (e, callback) {
        var self = this;
        if (self.toggleAction == "popover") {
            self.fnProcess_Popover(e, callback)
        }
        else if (self.toggleAction == "popOverWithData") {
            self.fnProcess_Popover_Data(e, callback)
        }
        else {
            self.fnProcess_Table(e, callback)
        }
    },
    expandBoxWithData: function (dataArray, dataHeader, callback) {
        var strResult = "";
        if (dataArray.length == 0 || dataArray.length != dataHeader.length) {
            strResult += "<tr>";
            strResult += '<td>';
            strResult += "something wrong";
            strResult += "</td>";
            strResult += "</tr>";
        }
        else {
            strResult = generateTable(dataArray, dataHeader);
        }
        callback(strResult)

        function generateTable(dataArray, dataHeader) {
            var strResult = "<h4 class='h5 mb-3'>Additional Info</h4>";
            for (let i = 0; i < dataArray.length; i++) {
                if (dataArray[i] == "") {
                    continue;
                }
                strResult += "<h5 class='fs-1 fw-bold mb-1'>" + dataHeader[i] + ":</h5>";
                strResult += dataArray[i];
                strResult += "<hr class='hr-space'>";
            }
            return strResult;
        }
    },
    expandBox: function (colspan_number, strSearchVal, callback) {
        var tmp_overlayMain = window.parent.document.getElementById('overlayMain')
        if (tmp_overlayMain) {
            window.parent.document.getElementById('overlayMain').style.display = 'none';
        }
        var self = this;
        $.ajax({
            type: 'Get',
            url: '/txsHandler.ashx',
            data: { strSearchVal: strSearchVal, toggleAction: self.toggleAction, actionParam: self.actionParam },
        }).done(function (data, textStatus, xhr) {
            var strResult = "";
            if (colspan_number) {
                if (textStatus === "success") {
                    strResult += '<tr class="myExpandBox">';
                    strResult += '<td colspan="' + colspan_number + '" style="white-space: unset;">';
                    strResult += data;
                    strResult += "</td>";
                    strResult += "</tr>";
                } else {
                    strResult += "<tr>";
                    strResult += '<td colspan="' + colspan_number + '">';
                    strResult += "something wrong";
                    strResult += "</td>";
                    strResult += "</tr>";
                }
            } else {
                strResult = (data)
            }
            callback(strResult)

        });
    }
};

var commonHashControl = {
    inithash: function (callback) {
        var hash = window.location.hash.substring(1);
        if (hash != '') {
            this.activaTab(hash);
        };

        if (callback) {
            callback(hash)
        }
    },
    activaTab: function (tab) {
        $('a[href="#' + tab + '"]').tab('show')
        //.on('shown.bs.tab', function (event) {
        //$('#' + tab)[0].scrollIntoView()
        //});
    },
    updatehash: function (strhash) {
        try {
            if (strhash === '') {
                history.replaceState("", document.title, window.location.href.split('#')[0]);
            } else {
                var baseUrl = window.location.href.split('#')[0];
                history.replaceState("", document.title, baseUrl + '#' + strhash);
            }
        } catch (err) {
        }
        this.activaTab(strhash);
    },
}

function getParameterByName(key) {
    return decodeURIComponent(window.location.search.replace(new RegExp("^(?:.*[&\\?]" + encodeURIComponent(key).replace(/[\.\+\*]/g, "\\$&") + "(?:\\=([^&]*))?)?.*$", "i"), "$1"));
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

function handleHtmlString(strVal) {
    strVal = strVal.replace(' ', '').replace('@', '').replace("'", "").replace("*", "").replace("(", "").replace(")", "").replace(";", "").replace(",", "").replace("<script", "").trim();
    return strVal;
}

function clearSearchInput() {
    const urlParams = new URLSearchParams(window.location.search);
    const strSearchVal = urlParams.get('q');
    if (strSearchVal !== "") {
        $("#q").val("");
    }
}

function initDateTimeTooltip(useShortHeader = false) {

    let headerText = "";
    let tooltipTitle = "";
    const datetimeTextCookie = getCookie(strSiteName + "_switch_age_datetime");
    if (datetimeTextCookie == '' || datetimeTextCookie == strAge) {
        headerText = strAge;
        tooltipTitle = strDateTimeTitle;
        $(dateTimeClass).hide();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();

        $(ageClass).show();
    }
    else {
        headerText = useShortHeader ? "UTC" : strDateTime;

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezome on column header
        if (offsetHoursFinal !== undefined) {
            //var datetimeTextLocal = "Date Time (UTC" + offsetHoursFinal + ")";
            if (useShortHeader) {
                headerText = strDateTimeLocalShort;
            }
            else {
                headerText = strDateTimeLocal;
            }
        }

        tooltipTitle = strAgeTitle;
        $(dateTimeClass).show();
        $(ageClass).hide();
    }

    const tooltipTriggerList = document.querySelectorAll('.age-datetime-with-tooltip');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => {
        $(tooltipTriggerEl).text(headerText);

        const newTooltip = new bootstrap.Tooltip(tooltipTriggerEl, {
            title: tooltipTitle,
            trigger: "hover"
        });

        return newTooltip;
    });
}

function convertUtcTimestampToLocalTime(showShortMonth = true) {

    strDateTimeFormat = getCookie(strSiteName + "_datetime_format");
    if (strDateTimeFormat === "LOCAL") {
        const tzid = Intl.DateTimeFormat().resolvedOptions().timeZone;
        var unixTimestamp = $("#showUtcLocalDate").attr("data-timestamp");
        const utcDate = new Date(unixTimestamp * 1000);
        const offsetMinutes = utcDate.getTimezoneOffset();
        const offsetHours = Math.abs(offsetMinutes / 60);
        const sign = offsetMinutes > 0 ? '-' : '+';
        const offsetHoursFinal = sign + offsetHours;
        const day = utcDate.getDate();
        const month = utcDate.toLocaleString('default', { timeZone: tzid, month: 'short' });
        const year = utcDate.getFullYear();
        const time = utcDate.toLocaleTimeString('default', { timeZone: tzid });

        // create a new formatted date string
        var formattedDateString = `${month}-${day}-${year} ${time}`;
        if(showShortMonth) {
            $("#showUtcLocalDate").text(formattedDateString + " UTC" + offsetHoursFinal);
        }
        else {
            formattedDateString = utcDate.toLocaleString('sv-SE', { timeZone: tzid });
            $("#showUtcLocalDate").text(formattedDateString + " UTC" + offsetHoursFinal);
        }
       
    }
}

function convertMultipleUtcTimestampToLocalTime() {
    strDateTimeFormat = getCookie("etherscan_datetime_format");
    if (strDateTimeFormat === "LOCAL") {
        const el_showUtcLocalDate = $(".showUtcLocalDate")

        el_showUtcLocalDate.each(function () {
            const tzid = Intl.DateTimeFormat().resolvedOptions().timeZone;
            var unixTimestamp = $(this).attr("data-timestamp");
            const utcDate = new Date(unixTimestamp * 1000);
            const offsetMinutes = utcDate.getTimezoneOffset();
            const offsetHours = Math.abs(offsetMinutes / 60);
            const sign = offsetMinutes > 0 ? '-' : '+';
            const offsetHoursFinal = sign + offsetHours;
            const day = utcDate.getDate();
            const month = utcDate.toLocaleString('default', { timeZone: tzid, month: 'short' });
            const year = utcDate.getFullYear();
            const time = utcDate.toLocaleTimeString('default', { timeZone: tzid });
            // create a new formatted date string
            const formattedDateString = `${month}-${day}-${year} ${time}`;
            $(this).text(formattedDateString + " UTC" + offsetHoursFinal);
        });
    }
}

function convertUtcToLocalDateTime(showUTCText = false, showAge = true) {

    strDateTimeFormat = getCookie(strSiteName + "_datetime_format");
    if (strDateTimeFormat === "LOCAL") {

        var localDateTimeArray = new Array();
        //var offsetHoursFinal;
        const tzid = Intl.DateTimeFormat().resolvedOptions().timeZone;

        if ($(localDateTimeClass).length > 0) {

            var $localDatetimeColumn = $(localDateTimeClass);
            $localDatetimeColumn.each(function (i, v) {
                const unixTimestamp = v.innerText;
                const utcDate = new Date(unixTimestamp * 1000);
                const offsetMinutes = utcDate.getTimezoneOffset();
                const offsetHours = Math.abs(offsetMinutes / 60);
                const sign = offsetMinutes > 0 ? '-' : '+';
                offsetHoursFinal = sign + offsetHours;
                const localDateTime = utcDate.toLocaleString("sv-SE", {
                    timeZone: tzid,
                    year: "numeric",
                    month: "2-digit",
                    day: "2-digit",
                    hour: "2-digit",
                    minute: "2-digit",
                    second: "2-digit",
                    //timeZoneName: "short"
                });

                var html = v.innerHTML;
                var content = html.replace(unixTimestamp, localDateTime);
                localDateTimeArray.push(content);

            });

            for (var j = 0; j < localDateTimeArray.length; j++) {
                var datetimeColumn = $(dateTimeClass);
                datetimeColumn[j].innerHTML = cleanHtmlStr(localDateTimeArray[j]);
            }

            for (var k = 0; k < localDateTimeArray.length; k++) {
                var utc = $($(ageClass)[k].innerHTML).attr("data-bs-title");
                var ageHtml = $(ageClass)[k].innerHTML;
                var content = ageHtml.replace(utc, $(localDateTimeArray[k])[0].innerHTML);
                $(ageClass)[k].innerHTML = cleanHtmlStr(content);
            }
        }
        else if ($(localDateTimeNFTClass).length > 0) {

            var $localDatetimeNFTColumn = $(localDateTimeNFTClass);
            $localDatetimeNFTColumn.each(function (i, v) {
                const dateText = v.innerText;

                // need to split the date string, add leading zeroes to hour and replace space with T for Safari
                var parts = dateText.split(" ");
                var datePart = parts[0];
                var timePart = parts[1];

                var timeParts = timePart.split(":");
                var hours = timeParts[0];
                var minutes = timeParts[1];
                var seconds = timeParts[2];

                hours = hours.padStart(2, "0");
                var dateText2 = datePart + "T" + hours + ":" + minutes + ":" + seconds;

                const date = new Date(dateText2);
                const offsetMinutes = date.getTimezoneOffset();
                const offsetHours = Math.abs(offsetMinutes / 60);
                const sign = offsetMinutes > 0 ? '-' : '+';
                offsetHoursFinal = sign + offsetHours;

                const utcTimestamp = Date.UTC(date.getFullYear(), date.getMonth(), date.getDate(),
                    date.getHours(), date.getMinutes(), date.getSeconds());
                const localDateTimeNFT = new Date(utcTimestamp).toLocaleString('sv-SE', {
                    timeZone: tzid,
                    year: "numeric",
                    month: "2-digit",
                    day: "2-digit",
                    hour: "2-digit",
                    minute: "2-digit",
                    second: "2-digit",
                });

                var html = v.innerHTML;
                var utcTxtString = "";
                if(showUTCText){
                    utcTxtString = " UTC" + offsetHoursFinal
                }
                var content = html.replace(dateText, localDateTimeNFT + utcTxtString);
                localDateTimeArray.push(content);

            });

            for (var j = 0; j < localDateTimeArray.length; j++) {
                var datetimeColumn = $(dateTimeClass);
                datetimeColumn[j].innerHTML = cleanHtmlStr(localDateTimeArray[j]);
            }

            if (showAge) {
                for (var k = 0; k < localDateTimeArray.length; k++) {
                    var utc = $($(ageClass)[k].innerHTML).attr("title");
                    var ageHtml = $(ageClass)[k].innerHTML;
                    var content = ageHtml.replace(utc, $(localDateTimeArray[k])[0].innerHTML);
                    $(ageClass)[k].innerHTML = cleanHtmlStr(content);
                }
            }
            

        }

        //for (var j = 0; j < localDateTimeArray.length; j++) {
        //    var datetimeColumn = $(dateTimeClass);
        //    datetimeColumn[j].innerHTML = cleanHtmlStr(localDateTimeArray[j]);
        //}

        //for (var k = 0; k < localDateTimeArray.length; k++) {
        //    var utc = $($(ageClass)[k].innerHTML).attr("data-bs-title");
        //    var ageHtml = $(ageClass)[k].innerHTML;
        //    var content = ageHtml.replace(utc, $(localDateTimeArray[k])[0].innerHTML);
        //    $(ageClass)[k].innerHTML = cleanHtmlStr(content);
        //}
    }
    else {
        offsetHoursFinal = undefined
    }

    //reinit tooltip
    $(`[data-bs-toggle="tooltip"]`).tooltip();
}

function cleanHtmlStr(strVal) {
    strVal = strVal.replace('@', '').replace("'", "").replace("*", "").replace("(", "").replace(")", "").replace(";", "").replace(",", "").replace("<script", "").trim();
    return strVal;
}

function switchAgeToDateTimeNew(el, useShortHeader = false) {
    const self = $(el);
    const tooltip = bootstrap.Tooltip.getOrCreateInstance(el);
    const currentHeaderText = self.text();
    const datetimeText = useShortHeader ? "UTC" : strDateTime;

    if (currentHeaderText == strAge) {
        self.text(datetimeText);
        $(dateTimeClass).show();

        //check display UTC or Local datetime
        convertUtcToLocalDateTime();
        //show UTC with timezone on column header
        if (offsetHoursFinal !== undefined) {
            if (useShortHeader) {
                self.text(strDateTimeLocalShort);
            }
            else {
                self.text(strDateTimeLocal);
            }
        }

        $(ageClass).hide();
        setAgeDateTimeCookie(strDateTime);

        tooltip.setContent({ '.tooltip-inner': strAgeTitle });
    }
    else if (currentHeaderText == datetimeText || currentHeaderText == strDateTimeLocal || currentHeaderText == strDateTimeLocalShort) {
        self.text(strAge);
        $(dateTimeClass).hide();
        $(ageClass).show();
        setAgeDateTimeCookie(strAge);

        tooltip.setContent({ '.tooltip-inner': strDateTimeTitle });
    }
}

function initTxFeeGasPriceTooltip() {
    let headerText = "";
    let tooltipTitle = "";
    if (strGlobalFee == null || strGlobalFee == "null" || strGlobalFee == strTxnFee) {
        headerText = strTxnFee;
        tooltipTitle = $("#hdnTxnFeeTitle").val();
        $(".showTxnFee").show();
        $(".showGasPrice").hide();
    } else if (strGlobalFee == strGasPrice) {
        headerText = strGasPrice;
        tooltipTitle = $("#hdnGasPriceTitle").val();
        $(".showTxnFee").hide();
        $(".showGasPrice").show();
    }

    const tooltipTriggerList = document.querySelectorAll('.switch-txn-fee-gas-price');
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => {
        $(tooltipTriggerEl).text(headerText);

        const newTooltip = new bootstrap.Tooltip(tooltipTriggerEl, {
            title: tooltipTitle,
            trigger: "hover"
        });

        return newTooltip;
    });
}

function switchTxFeeGasPriceNew(el) {
    const self = $(el);
    const tooltip = bootstrap.Tooltip.getOrCreateInstance(el);
    const strVal = self.text();
    if (strVal == strTxnFee) {
        self.text(strGasPrice);
        $(".showGasPrice").show();
        $(".showTxnFee").hide();
        sessionStorage.setItem("ShowFee", strGasPrice);

        tooltip.setContent({ '.tooltip-inner': $("#hdnGasPriceTitle").val() });
    }
    else if (strVal == strGasPrice) {
        self.text(strTxnFee);
        $(".showGasPrice").hide();
        $(".showTxnFee").show();
        sessionStorage.setItem("ShowFee", strTxnFee);

        tooltip.setContent({ '.tooltip-inner': $("#hdnTxnFeeTitle").val() });
    }
}

function switchAmountToValue(el, text1, text2, isStart) {
    if (el) {
        var cAmountPrice = getCookie(strSiteName + "_switch_token_amount_value");

        if ((isStart == false && cAmountPrice == "value") || (isStart == true && cAmountPrice == "amount")) {
            $(el).html(text1)
            $("#tooltipAmountValue").show()
            $(".td_showValue").show()
            $(".td_showAmount").hide()
            writeCookie(strSiteName + "_switch_token_amount_value", "amount")
        } else {
            $(el).html(text2)
            $("#tooltipAmountValue").hide()
            $(".td_showValue").hide()
            $(".td_showAmount").show()
            writeCookie(strSiteName + "_switch_token_amount_value", "value")
        }
    }
}

function initPopover() {
    const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
    const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))
}

function registerPreviewButtonEvent() {
    document.removeEventListener('click', handleTxPreviewOnClick);
    document.addEventListener('click', handleTxPreviewOnClick);

    if (window.top != window.self) {
        window.parent.document.removeEventListener('click', handleTxPreviewOnClick);
        window.parent.document.addEventListener('click', handleTxPreviewOnClick);
    }
}

var txPreviewPopoverGlobal = null;
function handleTxPreviewOnClick(e) {
    var targetedClass = e.target.closest('.js-tnx-preview');

    if (txPreviewPopoverGlobal !== null) {
        if (
            !(targetedClass &&
                txPreviewPopoverGlobal === bootstrap.Popover.getOrCreateInstance(targetedClass))
        ) {
            txPreviewPopoverGlobal.hide();
        }

    }

    if (e.target.closest('.js-tnx-preview')) {
        txPreviewPopoverGlobal = bootstrap.Popover.getOrCreateInstance(targetedClass);
        txPreviewPopoverGlobal.show();
    }

    if (targetedClass) {
        const self = $(targetedClass);
        const isInitialized = self.data("initialized");

        if (isInitialized === false) {
            const txHash = $.trim(self.parents("tr").find('.myFnExpandBox_searchVal').text());

            $.ajax({
                type: 'Get',
                url: '/txsHandler.ashx',
                data: { strSearchVal: txHash, toggleAction: "popover", actionParam: "txs" },
            }).done(function (data, textStatus, xhr) {
                self.data("initialized", true);

                if (window.top != window.self) {
                    txPreviewPopoverGlobal.dispose()

                    let myDefaultAllowList = bootstrap.Tooltip.Default.allowList
                    if (!myDefaultAllowList['*'].includes('style')) {
                        myDefaultAllowList['*'].push('style')
                    }

                    txPreviewPopoverGlobal = bootstrap.Popover.getOrCreateInstance(targetedClass);
                    txPreviewPopoverGlobal._config.html = true;
                    txPreviewPopoverGlobal._config.sanitize = true;
                    txPreviewPopoverGlobal._config.content = data;
                    txPreviewPopoverGlobal.show()
                    txPreviewPopoverGlobal._config.container = window.parent.document.body

                    txPreviewPopoverGlobal._element.addEventListener('hidden.bs.popover', () => {
                        txPreviewPopoverGlobal._config.container = window.document.body
                        txPreviewPopoverGlobal.update();
                    })
                    txPreviewPopoverGlobal._element.addEventListener('shown.bs.popover', () => {
                        txPreviewPopoverGlobal._config.container = window.parent.document.body
                        txPreviewPopoverGlobal.update();
                    })
                } else {
                    txPreviewPopoverGlobal.tip.querySelectorAll(".popover-body")[0].innerHTML = data
                    txPreviewPopoverGlobal._config.content = data;
                    txPreviewPopoverGlobal.update();
                }
            });
        }
    }

}

function initAdvPopover() {
    const popoverTriggerList = document.querySelectorAll('.myFnExpandBoxData');
    const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl));
}

function registerDataPreviewButtonEvent() {
    $(".myFnExpandBoxData").on("click", function (event) {
        const self = $(event.currentTarget);
        const isInitialized = self.data("initialized");

        if (isInitialized === false) {
            const popover = bootstrap.Popover.getOrCreateInstance(self[0]);
            var self_parent_tr = self.parents("tr");
            //var str_self_count = self_parent_tr.find('.myFnExpandBox_withData').attr("counter-data");
            var str_self_next = self_parent_tr.find('.myFnExpandBox_withData').attr("box-data");
            var str_self_next_full = self_parent_tr.find('.myFnExpandBox_withData').attr("box-data-full");
            var str_self_headers = self_parent_tr.find('.myFnExpandBox_withData').attr("box-header");
            var strData = expandBoxWithData(str_self_next.split(','), str_self_headers.split(','), str_self_next_full.split(','));

            //popover.setContent({
            //    ".popover-body": strData
            //});
            self.data("initialized", true);

            popover.dispose();

            const popover_add = new bootstrap.Popover(self[0], {
                "content": function () {
                    return strData;
                },
                "html": true,
                "sanitize": false
            }).show();

            $('[data-bs-add-toggle="tooltip"]').tooltip();
            self[0].addEventListener('shown.bs.popover', () => {
                $('[data-bs-add-toggle="tooltip"]').tooltip();
            });
        }
    });
}

function expandBoxWithData(dataArray, dataHeader, dataArrayFull) {
    var strResult = "";
    if (dataArray.length == 0 || dataArrayFull.length == 0 || dataArray.length != dataHeader.length) {
        strResult += "<tr>";
        strResult += '<td>';
        strResult += "something wrong";
        strResult += "</td>";
        strResult += "</tr>";
    }
    else {
        var strResult = "<h4 class='fs-base fw-bold mb-4'>Additional Info</h4>";
        for (let i = 0; i < dataArray.length; i++) {
            if (dataArray[i] == "") {
                continue;
            }
            var strCopyButton = "<a class='link-secondary' href='javascript:;' onclick='generateCopyFunction(this, \"" + dataArrayFull[i] + "\")' data-bs-add-toggle='tooltip' data-bs-placement='top' title='Copy  " + dataHeader[i] + " Data' ><i class='far fa-copy fa-fw'></i></a>";
            strResult += "<h6 class='fw-bold mb-1'>" + dataHeader[i] + ":</h6>";
            if (dataArray[i] !== dataArrayFull[i]) {
                strResult += "<span data-bs-add-toggle='tooltip' data-bs-placement='top' title='" + dataArrayFull[i] + "'>" + dataArray[i] + "</span>&nbsp;&nbsp;" + strCopyButton;
            } else {
                strResult += dataArray[i] + "&nbsp;&nbsp;" + strCopyButton;
            }
            strResult += "<hr class='hr-space'>";
        }
    }
    return strResult;
}

function generateCopyFunction(el, text) {
    try {

        //copy to clipboard code
        var elem = document.createElement('textarea');
        elem.value = text;
        document.body.appendChild(elem);
        elem.select();
        document.execCommand('copy');
        document.body.removeChild(elem);

        //get i element and original image class
        generateCopyIcon(el, "Copied");

    } catch (err) {
    }
}

function generateCopyIcon(el, tooltipText) {
    var iElem = $(el).children("i")[0];
    var oriImageClass = $(iElem).attr("class");
    var oriTooltip = $(el).attr('data-original-title');
    var checkImageClass = 'fa fa-check btn-icon__inner'

    $(iElem).removeClass(oriImageClass).addClass(checkImageClass);
    $(el).attr('data-original-title', tooltipText);

    setTimeout(() => {
        $(el).tooltip('show');
    }, 1);

    setTimeout(() => {
        $(iElem).removeClass(checkImageClass).addClass(oriImageClass);
        $(el).attr('data-original-title', oriTooltip)
    }, 1000)
}

function writeCookie(key, value, days) {
    var date = new Date();
    days = days || 365;
    date.setTime(+ date + (days * 86400000));
    window.document.cookie = key + "=" + value + "; expires=" + date.toGMTString() + "; path=/";
    return value;
}

//use by nft-tarnsfers, nft-trades, nft-last-mints
if (!String.prototype.format) {
    String.prototype.format = function () {
        var args = arguments;
        return this.replace(/{(\d+)}/g, function (match, number) {
            return typeof args[number] != 'undefined' ? args[number] : match;
        });
    };
}
//use by advance_search, nft-last-mints, nft-trades, nft-transfers, nftitem, tokenholdingnew
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
//use by home(js), nft-tarnsfers, nft-trades, nft-last-mints, name-lookup-search
function getTruncatedAddress(strAddress) {
    var strVal = "";
    if (strAddress !== "") {
        var strTruncateType = getCookie(strSiteName + "_address_format");
        if (strTruncateType === "") {
            strTruncateType = "0";
        }

        if (strTruncateType === "0" || strTruncateType === null || strTruncateType === "") {
            strVal = "<span data-highlight-target='" + strAddress + "'>" + strAddress.substring(0, 10) + "..." + strAddress.substring(strAddress.length - 9) + "</span>";
        } else if (strTruncateType === "1") {
            strVal = "<span class='hash-tag text-truncate' style='max-width:11.5rem;'>" + strAddress + "</span>";
        }
    }
    return strVal;
}
//use by nft-tarnsfers, nft-trades, nft-last-mints,name-lookup-search
function generateCopyToClipboard(strText, count, title) {
    if (!title) title = "Copy Address";
    var res = "<a class='js-clipboard link-secondary' href='javascript:;' data-clipboard-text='" + strText + "'"
    res += "data-bs-toggle='tooltip' data-bs-trigger='hover' data-bs-html='true' data-bs-boundary='viewport' title='" + title +"' data-hs-clipboard-options='{ "
    res += '"type": "tooltip", "successText": "Copied!", "classChangeTarget": "#linkIcon_' + count + '", '
    res += '"defaultClass": "fa-copy", "successClass": "fa-check" }'
    res += "'>"
    res += "<i id='linkIcon_" + count + "' class='far fa-copy fa-fw'></i> "
    res += "</a>"

    return res;
}

//global init
function registerTrigger() {
    const triggerHover = document.querySelectorAll('a[data-bs-toggle="tooltip"]:not([data-bs-trigger="hover"]):not([data-clipboard-text])');
    triggerHover.forEach(element => {
        var triggerHoverTooltip = bootstrap.Tooltip.getInstance(element);
        if (triggerHoverTooltip) {
            triggerHoverTooltip.dispose();
            element.setAttribute("data-bs-trigger", "hover");
            triggerHoverTooltip = bootstrap.Tooltip.getOrCreateInstance(element);
        }
    });
}

function handleBackButtonTooltip() {
    let el_handleTooltipPageShow = document.querySelector('.bs-tooltip-auto')
    if (el_handleTooltipPageShow) {
        let targetedElem = document.querySelector(`[aria-describedby='${document.querySelector('.bs-tooltip-auto').getAttribute('id')}']`)
        if (targetedElem) {
            let tooltipTemp = bootstrap.Tooltip.getInstance(targetedElem);
            tooltipTemp.hide();
        }
    }
}

function htmlEnc(s) {
    if (s != null) {
        return s.replace(/&/g, '&amp;')
            .replace(/</g, '&lt;')
            .replace(/>/g, '&gt;')
            .replace(/'/g, '&#39;')  // Single quote
            .replace(/"/g, '&quot;') // Double quote
            .replace(/`/g, '&#96;')  // Backtick
            .replace(/\//g, '&#x2F;') // Forward slash
            .replace(/\\/g, '&#x5C;') // Backslash
    } else {
        return ""
    }
}

window.removeEventListener('pageshow', handleBackButtonTooltip);
window.addEventListener('pageshow', handleBackButtonTooltip);
registerTrigger();

var themeMode = localStorage.getItem('theme');
if (themeMode === null) {
    themeMode = 'light';
}

var cThemeMode = getCookie('displaymode');

$(document).ready(function () {

    $('.theme-btn').click(function () {
        themeMode = localStorage.getItem('theme');
        cThemeMode = themeMode;
        if (themeMode === null) {
            themeMode = 'light';
        }

        $("iframe").each(function () {
            var src = $(this).contents().find('html');

            if (cThemeMode === 'light' || themeMode === 'light') {
                src.attr('data-bs-theme', 'light');
            } else if (cThemeMode === 'dim' || themeMode === 'dim') {
                src.attr('data-bs-theme', 'dim');
            } else if (cThemeMode === 'dark' || themeMode === 'dark') {
                src.attr('data-bs-theme', 'dark');
            }

            if (src.prevObject.prevObject[0].id === "token_analytics_pageiframe") {
                var iframeSrc = src.prevObject.prevObject.contents().find('iframe');
                var htmlSrc = iframeSrc.contents().find('html');
                if (cThemeMode === 'light' || themeMode === 'light') {
                    htmlSrc.attr('data-bs-theme', 'light');
                } else if (cThemeMode === 'dim' || themeMode === 'dim') {
                    htmlSrc.attr('data-bs-theme', 'dim');
                } else if (cThemeMode === 'dark' || themeMode === 'dark') {
                    htmlSrc.attr('data-bs-theme', 'dark');
                }
            }
        });

        var className = document.getElementsByClassName('editor');
        var classNameCount = className.length;
        for (var j = 0; j < classNameCount; j++) {
            var aceEditor = ace.edit(className[j].id);
            var editorSearch = ace.edit(className[j].id);
            if (cThemeMode === 'light' || themeMode === 'light') {
                aceEditor.setTheme(ace_editor_theme);
            } else if (cThemeMode === 'dim' || themeMode === 'dim') {
                aceEditor.setTheme(ace_editor_theme_dim);
            } else if (cThemeMode === 'dark' || themeMode === 'dark') {
                aceEditor.setTheme(ace_editor_theme_dark);
            }
        }
    });

});

(function () {
    if (cThemeMode === 'light' || themeMode === 'light') {
        document.documentElement.setAttribute('data-bs-theme', 'light');
    } else if (cThemeMode === 'dim' || themeMode === 'dim') {
        document.documentElement.setAttribute('data-bs-theme', 'dim');
    } else if (cThemeMode === 'dark' || themeMode === 'dark') {
        document.documentElement.setAttribute('data-bs-theme', 'dark');
    }
})();

//Private Note Quick Add Edit Start
function appendReturnUrl(returnUrl) {
    let hash = "";
    let isIframe = (window.self !== window.top);

    try {
        // Check if in an iframe and if same-origin with parent
        if (isIframe && window.parent.location.origin === window.location.origin) {
            hash = window.parent.location.hash.substring(1);
        } else {
            hash = window.location.hash.substring(1);
        }
    } catch (e) {
        console.warn("Cross-origin access blocked");
    }

    // Add hash if it exists, with proper URL encoding
    if (hash) {
        returnUrl += "&hash=" + encodeURIComponent(hash);
    }

    // Redirect to login
    if (isIframe) {
        window.parent.location.href = "/login?" + returnUrl;
    } else {
        window.location.href = "/login?" + returnUrl;
    }
}
function quickEditTxPrivateNote(txhash, result, element) {
    window.parent.document.getElementById("modalElement").value = element;
    window.parent.$('#tnxPrivateNoteModal').modal('show');
    window.parent.document.getElementById("editTxnNote").value = result;
    window.parent.document.getElementById("saveTxnNoteHash").value = txhash;
    window.parent.document.getElementById("txtPrivateNoteTip").innerHTML = "";
}
function quickAddTxPrivateNote(txhash, element) {
    window.parent.document.getElementById("modalElement").value = element;
    window.parent.$('#tnxPrivateNoteModal').modal('show');
    window.parent.document.getElementById("editTxnNote").value = "";
    window.parent.document.getElementById("saveTxnNoteHash").value = txhash;
    window.parent.document.getElementById("txtPrivateNoteTip").innerHTML = "";
}
function quickSubmitTxPrivateNote() {
    var txhash = window.parent.document.getElementById("saveTxnNoteHash").value;
    var privnote = htmlEnc(window.parent.document.getElementById("editTxnNote").value.trim());

    $.ajax({
        type: 'Get',
        url: '/updateHandler',
        data: {
            opr: 'updatenotetx',
            tx: txhash,
            txt: privnote,
            sid: sid
        },
        success: function (res) {
            if (res == 0) {
                window.parent.$('#tnxPrivateNoteModal').modal('hide');
                var element = window.parent.document.getElementById("modalElement").value;
                updateTransactionHash(txhash, privnote, element)
            } else if (res == 1) {
                $("#txtPrivateNoteTip").html("<i class='far fa-exclamation-circle text-secondary'></i> Sorry but to update your private note, You have to be <a href='/login'><b>Logged In</b></a> first.");
            } else if (res == 2) {
                $("#txtPrivateNoteTip").html("<i class='far fa-exclamation-triangle text-danger'></i> Unable to update private note. General exception error occurred.");
            } else if (res == 3) {
                window.parent.$('#tnxPrivateNoteModal').modal('hide');
                var element = window.parent.document.getElementById("modalElement").value;
                removePrivateNote(element)
            } else if (res == 4) {
                $("#txtPrivateNoteTip").html("<i class='far fa-exclamation-triangle text-danger'></i> Unable to remove private note. General exception error occurred.");
            } else if (res == 5) {
                $("#txtPrivateNoteTip").html("<i class='far fa-exclamation-triangle text-danger'></i> Sorry, we were unable to add a new private Note. You have exceeded the maximum allowed quota for your account.");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });
};
function removePrivateNote(element) {
    const existingElement = element.closest('div.d-flex').nextElementSibling;
    if (existingElement != null) {
        existingElement.remove()
    }
}
function updateTransactionHash(searchHash, privnote, element) {
    // Encode privnote and searchHash to prevent XSS
    privnote = htmlEnc(privnote);
    searchHash = encodeURIComponent(searchHash);

    // Create a new HTML element instead of setting `innerHTML` directly
    const newDiv = document.createElement('div');
    newDiv.classList.add('d-inline-flex', 'align-items-center', 'gap-1', 'appendPrivNote');
    newDiv.setAttribute('data-bs-toggle', 'popover');
    newDiv.setAttribute('data-bs-trigger', 'hover');
    newDiv.setAttribute('data-bs-content', privnote);

    const icon = document.createElement('i');
    icon.classList.add('far', 'fa-regular', 'small', 'fa-note-sticky', 'text-muted', 'mt-0.5');
    newDiv.appendChild(icon);

    const spanText = document.createElement('span');
    spanText.classList.add('text-muted', 'small', 'hash-tag', 'text-truncate');
    spanText.textContent = privnote;
    newDiv.appendChild(spanText);

    // Replace or insert the new element as required
    const existingElement = element.closest('div.d-flex').nextElementSibling;
    if (existingElement != null && existingElement.classList.contains('d-inline-flex')) {
        existingElement.replaceWith(newDiv);
    } else {
        element.closest('div.d-flex').insertAdjacentElement('afterend', newDiv);
    }

    // Create the edit button safely
    const editBtnSpan = document.createElement('span');
    editBtnSpan.classList.add('group-lg-hover', 'transition-all');
    editBtnSpan.setAttribute('data-bs-toggle', 'tooltip');
    editBtnSpan.setAttribute('data-bs-trigger', 'hover');
    editBtnSpan.setAttribute('data-bs-placement', 'top');
    editBtnSpan.setAttribute('title', 'Edit Transaction Private Note');

    const editLink = document.createElement('a');
    editLink.classList.add('link-muted');
    editLink.setAttribute('href', 'javascript:;');
    editLink.addEventListener('click', function () {
        quickEditTxPrivateNote(searchHash, privnote, this);
    });

    const editIcon = document.createElement('i');
    editIcon.classList.add('far', 'fa-pen-to-square');
    editLink.appendChild(editIcon);
    editBtnSpan.appendChild(editLink);

    element.closest('span.group-lg-hover').replaceWith(editBtnSpan);

    initPopover();
    $("[data-bs-toggle='tooltip']").tooltip();
}
//Private Note Quick Add Edit End

//Private Name Tag Quick Add Edit Start
var strAddressPublicTag = ""
var strAddressENS = ""
var blnIsContract = false
function quickEditPrivateNameTag(address, addressPrivateTag, addressPublicTag, addressENS, isContract, privateNote, element, istab) {

    strAddressPublicTag = htmlEnc(addressPublicTag)
    strAddressENS = htmlEnc(addressENS)
    blnIsContract = htmlEnc(isContract)
    addressPrivateTag = htmlEnc(addressPrivateTag)
    privateNote = htmlEnc(privateNote)

    if (istab === "true") {
        window.parent.document.getElementById("modalElementPrivateNameTag").value = element;
        window.parent.$('#privateNameTagModal').modal('show');
        window.parent.document.getElementById("txtAddress").value = address;
        window.parent.document.getElementById("txtPrivateNameTagMain").value = addressPrivateTag;
        window.parent.document.getElementById("txtPrivateNoteAreaMain").value = privateNote;
        //window.parent.document.getElementById("privatetagtip").innerHTML = "";
    }
    else {
        document.getElementById("modalElementPrivateNameTag").value = element;
        $('#privateNameTagModal').modal('show');
        document.getElementById("txtAddress").value = address;
        document.getElementById("txtPrivateNameTagMain").value = addressPrivateTag;
        document.getElementById("txtPrivateNoteAreaMain").value = privateNote;
        //document.getElementById("privatetagtip").innerHTML = "";
    }

}
function quickAddPrivateNameTag(address, addressPrivateTag, addressPublicTag, addressENS, isContract, privateNote, element, istab) {

    strAddressPublicTag = htmlEnc(addressPublicTag)
    strAddressENS = htmlEnc(addressENS)
    blnIsContract = htmlEnc(isContract)

    if (istab === "true") {
        window.parent.document.getElementById("modalElementPrivateNameTag").value = element;
        window.parent.$('#privateNameTagModal').modal('show');
        window.parent.document.getElementById("txtAddress").value = address;
        window.parent.document.getElementById("txtPrivateNameTagMain").value = "";
        window.parent.document.getElementById("txtPrivateNoteAreaMain").value = "";
        //window.parent.document.getElementById("privatetagtip").innerHTML = "";
    }
    else {
        document.getElementById("modalElementPrivateNameTag").value = element;
        $('#privateNameTagModal').modal('show');
        document.getElementById("txtAddress").value = address;
        document.getElementById("txtPrivateNameTagMain").value = "";
        document.getElementById("txtPrivateNoteAreaMain").value = "";
        //document.getElementById("privatetagtip").innerHTML = "";
    }

}
function quickSubmitPrivateNameTag() {

    var address = htmlEnc(document.getElementById("txtAddress").value);
    address = address.replace(/^\s+|\s+$/gm, '');
    var privname = htmlEnc(document.getElementById("txtPrivateNameTagMain").value);
    var privnote = htmlEnc(document.getElementById("txtPrivateNoteAreaMain").value);

    $.ajax({
        type: 'Get',
        url: '/updateHandler',
        data: {
            opr: 'updatenoteaddr',
            a: address,
            nametag: privname,
            txt: privnote,
            isReturnHtml: '1',
            sid: sid
        },
        success: function (res) {

            if (!isNaN(res)) {
                res = parseInt(res);

                if (res == 0) {
                    $('#privateNameTagModal').modal('toggle');
                    var element = document.getElementById("modalElementPrivateNameTag").value;
                    UpdatePrivateNameTag(address, privname, blnIsContract, privnote, element)
                } else if (res == 1) {
                    $("#privatenotetipMain").html("<font color='gray'><i class='fa fa-exclamation-circle'></i> Sorry but to update your private Note, You have to be <font color='#48B8EE'><a href='/login'><b>Logged In</b></a></font> first.</font>");
                } else if (res == 2) {
                    $("#privatenotetipMain").html("<font color='gray'><i class='far fa-exclamation-triangle'></i> Unable to update private Note. General exception error occurred.</font>");
                } else if (res == 3) {
                    $('#privateNameTagModal').modal('toggle');
                } else if (res == 4) {
                    $("#privatenotetipMain").html("<font color='gray'><i class='far fa-exclamation-triangle'></i> Unable to remove private Note. General exception error occurred.</font>");
                } else if (res == 5) {
                    $("#privatenotetipMain").html("<font color='red'><i class='far fa-exclamation-triangle'></i> Sorry, we were unable to add a new private Note. You have exceeded the maximum allowed quota for your account</font>");
                }
            }
            else {
                $('#privateNameTagModal').modal('toggle');
                var element = document.getElementById("modalElementPrivateNameTag").value;
                removePrivateNameTag(element, res)
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
        }
    });
}

function UpdatePrivateNameTag(address, privname, blnIsContract, privNote, element) {

    address = htmlEnc(address);
    privname = htmlEnc(privname);
    privNote = htmlEnc(privNote);

    address = address.toLowerCase();
    //const links = document.querySelectorAll('a.js-clipboard.link-secondary');
    const links = document.querySelectorAll(
        'a.js-clipboard.link-secondary, a.js-clipboard-required-confirmation.link-secondary'
    );

    for (let link of links) {

        const linkAddress = link.getAttribute('data-clipboard-text');
        if (linkAddress && linkAddress.toLowerCase() === address) {
            let displayElement = link.closest('div.d-flex');
            if (displayElement && displayElement.closest('td') && displayElement.firstElementChild && !displayElement.classList.contains('d-none') && privname !== "") {
                var tooltip = 'My Name Tag: ' + privname + ' <br> (' + address + ')';
                if (strAddressPublicTag !== "") {
                    tooltip = 'My Name Tag: ' + privname + ' <br> Public Tag: ' + strAddressPublicTag + ' (' + address + ')';
                }

                // Create the icon element
                const icon = document.createElement('i');
                icon.classList.add('far', 'fa-memo', 'text-secondary');
                icon.setAttribute('data-bs-toggle', 'tooltip');
                icon.setAttribute('data-bs-title', 'Contract');

                // Create nametag element
                const nametag = document.createElement('a');
                nametag.href = "/address/" + address;
                nametag.className = "badge border text-dark fw-normal fs-sm rounded-pill hash-tag text-truncate py-1.5 bg-light border-dark dark:border-white border-opacity-10";
                nametag.setAttribute("data-bs-toggle", "tooltip");
                nametag.setAttribute("data-bs-trigger", "hover");
                nametag.setAttribute("data-bs-html", "true");
                nametag.setAttribute("data-bs-title", tooltip);

                if (blnIsContract === "true") {
                    nametag.appendChild(icon);
                    nametag.innerHTML += " " + privname;
                }
                else {
                    nametag.innerHTML = privname;
                }


                displayElement.replaceChild(nametag, displayElement.firstElementChild);

                TextHighlight.addContent(privname, nametag);

                // Create the edit button
                const editBtnSpan = document.createElement('span');
                editBtnSpan.classList.add('group-lg-hover', 'transition-all');
                editBtnSpan.setAttribute('data-bs-toggle', 'tooltip');
                editBtnSpan.setAttribute('data-bs-trigger', 'hover');
                editBtnSpan.setAttribute('data-bs-placement', 'top');
                editBtnSpan.setAttribute('title', 'Edit Private Name Tag');

                const editLink = document.createElement('a');
                editLink.classList.add('link-muted');
                //editLink.setAttribute('href', 'javascript:;');
                editLink.href = "#";
                editLink.addEventListener('click', function (event) {
                    event.preventDefault();
                    quickEditPrivateNameTag(address, privname, strAddressPublicTag, strAddressENS, blnIsContract, privNote, this);
                });

                const editIcon = document.createElement('i');
                editIcon.classList.add('far', 'fa-pen-to-square');
                editLink.appendChild(editIcon);
                editBtnSpan.appendChild(editLink);

                //element.closest('span.group-lg-hover').replaceWith(editBtnSpan);
                displayElement.querySelector('span.group-lg-hover').replaceWith(editBtnSpan);
            }
        }
    }

    $("[data-bs-toggle='tooltip']").tooltip();
}
function removePrivateNameTag(element, res) {
    try {
        if (res.html) {
            const match = res.html.match(/data-clipboard-text=['"]([^'"]+)['"]/);
            let address = match ? match[1].toLowerCase() : null;

            //const links = document.querySelectorAll('a.js-clipboard.link-secondary');
            const links = document.querySelectorAll(
                'a.js-clipboard.link-secondary, a.js-clipboard-required-confirmation.link-secondary'
            );

            for (let link of links) {
                const linkAddress = link.getAttribute('data-clipboard-text');
                if (linkAddress && linkAddress.toLowerCase() === address) {
                    let displayElement = link.closest('div.d-flex');
                    if (displayElement) {
                        displayElement.innerHTML = res.html;
                    }
                }
            }
        }
    } catch (error) {
        console.error("Error removing private name tag:", error);
    }
}

//Private Name Tag Quick Add Edit End