
var contextPath;

$(document).ready(function(){

    $('#springDialogSuccess').hide();
    
   // $( 'textarea#headingContent' ).ckeditor();
    
    $('#manageSpringMvcTable').dataTable({
        
        "sPaginationType" : "full_numbers",
        "aaSorting" : [ [ 0, "desc" ] ],
        "aoColumns" : [ {
            "bSearchable" : true,
            "bSortable" : true
        },{
            "bSearchable" : true,
            "bSortable" : true
        },{
            "bSearchable" : true,
            "bSortable" : true
        },{
            "bSearchable" : true,
            "bSortable" : true
        },{
            "bSearchable" : true,
            "bSortable" : true
        },{
            "bSearchable" : true,
            "bSortable" : true
        },{
            "bSearchable" : true,
            "bSortable" : true
        }, {
            "bSearchable" : true,
            "bSortable" : true
        } ]
    
    }); 
    
    $("#submitSpringMvc").click(function(){
       
        contextPath = $('#contextPath').val();
        console.log($("#springmvc-form").serialize());
      
       /* $.blockUI({ 
            message: '<h6><img alt="Please Wait" src="resources/bootstrap/images/ajax-loader.gif" /> </h6>',
            css: { 
                border: 'none',                       
                '-webkit-border-radius': '5px', 
                '-moz-border-radius': '5px',
            } 
        }); */
        $.post(contextPath+"/admin/2014/002/saveSpringMvcProcess",$("#springmvc-form").serialize(),function(){
            //$.unblockUI();
           /*  bootbox.alert(data.message,function(){
                $("#signup-form")[0].reset();
               }); */
              
            $("#successMsg").html("Successfully Saved");
            $("#springmvc-form")[0].reset();
            window.location.href=contextPath+"/admin/manageSpringMvc";
        });
        
   });
   
    
});//Main Jquery End


function AddSpringMvc(){
    
    contextPath = $('#contextPath').val();
    
    $('#springDialogSuccess').hide();
    
    $('#springmvc-form')[0].reset();
    $( "#addSpringMvcDialog" ).dialog({
        resizable: false,
        modal: true,
        width:'auto',
        height:'auto',
        buttons: {
              "Cancel ": function(e) { 
                  $( this ).dialog( "close" );
                  },
              "Update": function(e) {
                  //saveUserDetails(e);
                  $( this ).dialog( "close" );
               }
              }
          });
}