var arrLang = {
          "en": {
            "Send": "Send Us A Message",
            "tell": "Tell us your name",
            "first_name": "first_name",
            "last_name": "last_name",
            "enter":"Enter your email",
	    "email":"email_id",
            "Enter_p":"Enter phone number",
	    "phone":"phone_no",
            "message":"Message",
            "write_us":"Write us a message",
            "Send_message":"Send Message",
	    "address":"Address",
	    "Lets_Talk":"Lets Talk",
	    "general":"General Support",
	    "contact":"contact@example.com",

          },
          "de": {
            "Send": "Schick uns eine Nachricht",
            "tell": "Sagen Sie uns Ihren Namen",
            "first_name": "Vorname",
            "last_name": "Nachname",
            "enter":"Geben sie ihre E-Mail Adresse ein",
            "email":"email_id",
            "Enter_p":"Telefonnummer eingeben",
            "phone":"Telefonnummer",
            "message":"Botschaft",
            "write_us":"Schreiben Sie uns eine Nachricht",
            "Send_message":"Nachricht senden",
            "address":"Adressen",
            "Lets_Talk":"Lass uns reden",
            "general":"Allgemeine Unterstützung",
            "contact":"contact@example.com",


          }
        };

        $(document).ready(function() {
          // The default language is English
          var lang = getCookie('lang');
          $(".lang").each(function(index, element) {
            $(this).text(arrLang[lang][$(this).attr("key")]);
          });
        });

        // get/set the selected language
        $(".translate").click(function() {
          var lang = $(this).attr("id");
          setCookie( 'lang', lang, 10000 );

          $(".lang").each(function(index, element) {
            $(this).text(arrLang[lang][$(this).attr("key")]);
          });
        });


        function setCookie(name, value, days) {
          var expires = "";
          if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
          }
          document.cookie = name + "=" + (value || "") + expires + "; path=/";
        }

        function getCookie(name) {
          var nameEQ = name + "=";
          var ca = document.cookie.split(';');
          for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
          }
          return null;
        }

(function ($) {
    "use strict";
    
    



  
  
    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');

    $('.validate-form').on('submit',function(){
        var check = true;

        for(var i=0; i<input.length; i++) {
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (input) {
        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if($(input).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    

})(jQuery);
