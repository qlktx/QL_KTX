<script type="text/javascript">
  $(document).ready(function() {          
$('a[name=modal]').click(function(e) {                  
e.preventDefault();               
var id = $(this).attr('href');                    
var winH = $(window).height();        
var winW = $(window).width();                              
$(id).css('top',  winH/2-$(id).height()/2);        
$(id).css('left', winW/2$(id).width()/2);
$(id).fadeIn(500);         
});
             
$('.modalwindow .close').click(function (e) {        
        e.preventDefault();
        $('.modalwindow').fadeOut(500);
    });
});
</script>