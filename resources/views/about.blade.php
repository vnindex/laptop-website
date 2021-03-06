@extends('layouts.app')
@section('title', 'Sky Mart')
@section('content')

<div class="about-page">
    <div class="about-sky">
       <div class="container">
         <div class="about-title">
           @lang('main.about.line1') <span style="color: rgb(233, 83, 23);">NguyenKim</span> 
         </div>
         <div class="about-content">
           <div class="row">
             <div class="col-7">
               <p>@lang('main.about.line2')</p>
               <ul class="features">
                 <li><img src="https://salt.tikicdn.com/ts/upload/40/df/a0/f3513d2eeb61d26bfff775654c40e45e.png" alt="">@lang('main.about.line3')</li>
                 <li><img src="https://salt.tikicdn.com/ts/upload/40/df/a0/f3513d2eeb61d26bfff775654c40e45e.png">@lang('main.about.line4')</li>
                 <li> <img src="https://salt.tikicdn.com/ts/upload/40/df/a0/f3513d2eeb61d26bfff775654c40e45e.png">@lang('main.about.line6')</li>
                 <li><img src="https://salt.tikicdn.com/ts/upload/40/df/a0/f3513d2eeb61d26bfff775654c40e45e.png">Hotline liên hệ: 1800 6800 (Miễn phí)</li>
               </ul>
               <span class="button-wrap"> 
                   <a href="{{ route('home') }}"><button class="ab-btn mb-3">@lang('main.about.line6')</button></a>
               </span>
             </div>
             <div class="col-5">
               <img class="mb-5" src="./assets/images/logo_nne.png" alt="">
             </div>
           </div>
         </div>
       </div>
    </div>
    <div class="contact">
    
   </div>
    <div class="doi-tac">
      <div class="container">
       <div class="doitac-title">
         <h3>@lang('main.about.line8')</h3>
       </div>
       
      </div>
      
    </div>
    <div class="ql">
     <span class="text"><a style="color: white" href="{{ route('home') }}">@lang('main.about.line9') <i class="fas fa-arrow-right"></i></a></span>
   </div>
  </div>


  <script>
      $("#contact").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"name": {
				required: true,
				maxlength: 25
			},
           
            "email":{
                required: true,
                email: true
            },
            
			"sdt": {
				required: true,
				maxlength: 10
			},
            "text": {
				required: true
				
			},
			
		},
		messages: {
			"name": {
				required: "*Bạn chưa nhập tên",
				maxlength: "*Hãy nhập tối đa 25 ký tự"
			},
           
            "email": {
				required: "*Bạn chưa nhập email",
				email: "*Nhập sai định dạng email"
			},
            "sdt": {
				required: "*Bạn chưa nhập sdt",
				
			},
			"text": {
				required: "*Bạn chưa nhập nội dung",
				
			},
			
        },
        
	});

  </script>

@endsection