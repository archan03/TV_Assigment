// $(document).ready(function(){
//     $("#toggel_class").click(function(){
//       $("a div").addClass("active");
//     });
//   });
var menu = document.querySelector("button");
menu.addEventListener("click",function(){
    document.querySelector(".container_sidebar").classList.toggle("active")
})

$(document).ready(function() {
    $('a').click(function() {
        $('a.tab.ac').removeClass("ac");
            $(this).addClass("ac");
        });
});
    