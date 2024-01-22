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
            async:false,
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
                    console.log(res.status);
                    return window.location.href = "/error/list/";
                }else{
                    console.log(res.message);
                }
            },
            error: (err,exception)=>{
                console.log(err);
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
                    return window.location.href = `/error/element/?id=${error_id}`;
                }else{
                    console.log(res.message);
                }
            },
            error: (err,exception)=>{
                console.log(err);
            }
        })      
    });

    $("#btn_error_form_modal_save").click(()=>{        
        const setted_statuse = $("#setted_statuse").val();
        
        const error_num = $("#error_num").val();        
        const error_date = $("#error_date").val();        
        const error_short_desk = $("#error_short_desk").val();        
        const error_full_desk = $("#error_full_desk").val();        
        const error_statuse = setted_statuse;
        const error_importance = $("#error_importances :selected").val();        
        const error_criticality = $("#error_criticalities :selected").val();        
        const error_user_id = $("#error_user_id").val();        
        const error_id = $("#error_id").val();
        
        const error_status_comment = $("#error_status_comment").val();        
        const error_status_date = $("#error_status_date").val();                
        const error_status_user_id = $("#error_status_user_id").val();                
        $.ajax({
            type:"post",
            url:"/controller/error/?action=addComment",   
            dataType: "json",
            data: {
                error_id:error_id,
                error_status_date:error_status_date,
                error_status_user_id:error_status_user_id,
                error_status_comment:error_status_comment
            },            
            success: (res)=>{
                if(res.status === 200){    
                    console.log(res);
                    return res;
                }else{
                    console.log(res);
                }
            },
            error: (err,exception)=>{
                console.log(err);
            }
        })      

        

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
                    return window.location.href = `/error/element/?id=${error_id}`;
                }else{
                    console.log(res.message);
                }
            },
            error: (err,exception)=>{
                console.log(err);
            }
        }) 
    });
})