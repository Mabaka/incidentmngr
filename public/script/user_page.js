$(document).ready(()=>{
    $("#btn_reg_form_enter").click(()=>{
        const login = $("#login").val();
        const password = $("#password").val();
        const name = $("#name").val();
        const secondname = $("#secondname").val();
        const id = $("#id").val();        
        $.ajax({
            type:"post",
            url:"/controller/user/?action=edit",   
            dataType: "json",
            data: {
                login:login,
                password: password,
                name: name,
                secondname: secondname,                
                id: id
            },            
            success: (res)=>{
                if(res.status === 200){                    
                    return window.location.href = "/";
                }else{
                    alert(res.message);
                }
            }
        })      
    });
})