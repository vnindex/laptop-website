@extends('layouts.admin')
@section('content')
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Tạo tài khoản mới') }}</div>

                <div class="card-body">
                    <form method="POST" id="login2" action="{{ route('register') }}">
                        @csrf 

                        <div class="form-group row">
                            <label for="username" class="col-md-4 col-form-label text-md-right">Tên đăng nhập</label>

                            <div class="col-md-6">
                                <input id="username" type="text" class="form-control" name="username">

                                @error('username')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">Email</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">Mật khẩu</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="lastname" class="col-md-4 col-form-label text-md-right">Họ và tên của bạn</label>

                            <div class="col-md-6">
                                <input id="lastname" type="text" class="form-control" name="lastname" required="true">

                                @error('lastname')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="phone" class="col-md-4 col-form-label text-md-right" >Số điện thoại</label>

                            <div class="col-md-6">
                                <input id="phone" type="tel" class="form-control" name="phone" required="true">

                                @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="birthday" class="col-md-4 col-form-label text-md-right">Ngày sinh</label>

                            <div class="col-md-6">
                                <input id="birthday" type="date" class="form-control" name="birthday">

                                @error('birthday')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="gender" class="col-md-4 col-form-label text-md-right">Giới tính</label>

                            <div class="col-md-6">
                            <select name="gender" id="">
                                @foreach (config('app.gender') as $key => $value)
                                    <option value="{{ $key }}"> @lang('main.acc.'.$value) </option>
                                @endforeach
                            </select>

                                @error('gender')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Đăng ký tài khoản') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>  
 </div>
 <br>
 <br>
 <br>
 <br>
 <script>
    
    $("#login2").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"username": {
				required: true,
				maxlength: 25
			},
            "email":{
                required: true,
                email: true
            },
            "lastname":{
                required: true
            },
            "phone":{
                required: true
            },
            "birthday":{
                required: true,
                date: true
            },
			"password": {
				required: true,
				minlength: 8
			}
            

		},
		messages: {
			"username": {
				required: "*Bạn chưa nhập tên đăng nhập",
				maxlength: "*Hãy nhập tối đa 25 ký tự"
			},
            "lastname": {
				required: "*Bạn chưa nhập họ và tên của bạn",
				maxlength: "*Hãy nhập lại"
			},
            "email": {
				required: "*Bạn chưa nhập email",
				email: "*Nhập sai định dạng email"
			},
            "phone": {
				required: "*Bạn chưa nhập số điện thoại",
				maxlength: "*Hãy nhập tối đa 10 ký tự"
			},
            "birthday": {
				required: "*Bạn chưa nhập ngày sinh",
				date: "*Nhập sai ngày"
			},
			"password": {
				required: "*Bạn chưa nhập password",
				minlength: "*Hãy nhập ít nhất 8 ký tự"
			}

        },

	});
<script/>
@endsection




@extends('layouts.admin')
@section('content')
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>@lang('admin.deals.deal_manage')</h3>
      </div>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 ">
        <div class="x_panel">
          <div class="x_title">
            <h2>@lang('admin.deals.create')</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <br />
            <form action="{{ route('admin.deal.store') }}" method="POST" enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
              @csrf
              <div class="item form-group">
                <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">@lang('admin.deals.deal_image')</label>
                <div class="col-md-6 col-sm-6 ">
                  <input type="file" id="last-name" name="deal_image" class="form-control">
                </div>
              </div>
              <div class="ln_solid"></div>
              <div class="item form-group">
                <div class="col-md-6 col-sm-6 offset-md-3">
                  <button class="btn btn-primary" type="reset">Reset</button>
                  <button id="submit" type="submit" class="btn btn-success">Submit</button>
                </div>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  $(document).ready(function(){
    $("button#submit").click(function(){
      var submit = $("input#last-name").val();
      var flag = true
      if(submit ==''){
        $("input#last-name").css({"background" : "rgba(255, 147, 146, 0.3)", "border" : "2px solid rgb(255, 0, 0, 0.3)"});
        alert("Bạn chưa thêm file")
        flag = false
      }else{
        $("input#last-name").css({"background" : "rgb(100 216 90 / 30%)", "border" : "2px solid rgb(147 161 146 / 30%)"});
      }
      if(flag == true){
        alert("Thêm Thành Công")
        return true
      }
      return false
    })
  })
</script>
@endsection