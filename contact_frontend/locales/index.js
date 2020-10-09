var arrLang = {
  "en-gb": {
    "HOME": "Home",
    "ABOUT": "About Us",
    "CONTACT": "Contact Us",
  },
  "zh-tw": {
    "HOME": "首頁",
    "ABOUT": "關於我們",
    "CONTACT": "聯絡我們",
  }
};

// The default language is English
var lang = "en-gb";
// Check for localStorage support
if('localStorage' in window){
   
   var usrLang = localStorage.getItem('uiLang');
   if(usrLang) {
       lang = usrLang
   }

}


console.log(lang);

        $(document).ready(function() {

          $(".lang").each(function(index, element) {
            $(this).text(arrLang[lang][$(this).attr("key")]);
          });
        });

        // get/set the selected language
        $(".translate").click(function() {
          var lang = $(this).attr("id");

          // update localStorage key
          if('localStorage' in window){
               localStorage.setItem('uiLang', lang);
               console.log( localStorage.getItem('uiLang') );
          }

          $(".lang").each(function(index, element) {
            $(this).text(arrLang[lang][$(this).attr("key")]);
          });
        });

