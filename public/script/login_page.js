$(document).ready(()=>{
    $("#btn_login_form_enter").click(()=>{
        const login = $("#login").val();
        const password = $("#password").val();

        $.ajax({
            type:"post",
            url:"/controller/login/?action=login",   
            dataType: "json",
            data: {
                login:login,
                password: password
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