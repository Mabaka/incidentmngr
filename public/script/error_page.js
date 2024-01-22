$(document).ready(()=>{
    $("#btn_error_form_add").click(()=>{
        const error_num = $("#error_num").val();        
        const error_date = $("#error_date").val();        
        const error_short_desk = $("#error_short_desk").val();        
        const error_full_desk = $("#error_full_desk").val();        
        const error_statuse = $("#error_statuses :selected").val();        
        const error_importance = $("#error_importances :selected").val();        
        const error_criticality = $("#error_criticalities :selected").val();        
        const error_user_id = $("#error_user_id").val();        

        $.ajax({
            type:"post",
            url:"/controller/error/?action=add",   
            dataType: "json",
            data: {
                error_num:error_num,
                error_date: error_date,
                error_short_desk: error_short_desk,
                error_full_desk: error_full_desk,
                error_statuse: error_statuse,
                error_importance: error_importance,
                error_criticality: error_criticality,
                error_user: error_user_id,
            },            
            success: (res)=>{
                if(res.status === 200){                    
                    alert(res.message);
                    //return window.location.href = "/";
                }else{
                    alert(res.message);
                }
            }
        })      
    });

    $("#btn_error_form_edit").click(()=>{
        const error_num = $("#error_num").val();        
        const error_date = $("#error_date").val();        
        const error_short_desk = $("#error_short_desk").val();        
        const error_full_desk = $("#error_full_desk").val();        
        const error_statuse = $("#error_statuses :selected").val();        
        const error_importance = $("#error_importances :selected").val();        
        const error_criticality = $("#error_criticalities :selected").val();        
        const error_user_id = $("#error_user_id").val();        
        const error_id = $("#error_id").val();        

        $.ajax({
            type:"post",
            url:"/controller/error/?action=upd",   
            dataType: "json",
            data: {
                error_id:error_id,
                error_num:error_num,
                error_date: error_date,
                error_short_desk: error_short_desk,
                error_full_desk: error_full_desk,
                error_statuse: error_statuse,
                error_importance: error_importance,
                error_criticality: error_criticality,
                error_user: error_user_id,
            },            
            success: (res)=>{
                if(res.status === 200){                    
                    alert(res.message);
                    //return window.location.href = "/";
                }else{
                    alert(res.message);
                }
            }
        })      
    });
})