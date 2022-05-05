<div class="cont" id="ex1">
    <form method="POST" action="{{ route('login') }}" id="login" class="form sign-in">
        @csrf
        <h2>@lang('main.acc.login')</h2>
        <label>
            <span>@lang('main.acc.username')</span>
            <input id="last-name" type="text" name="username">
        </label>

        <label>
            <span>@lang('main.acc.password')</span>
            <input id="passWord" type="password" name="password">
        </label>
        <button id="submit" class="submit" type="submit">@lang('main.acc.login')</button>
        <p class="text-center"><a href="{{ route('password.request') }}" class="forgot-pass text-center">@lang('main.acc.quenpass')</a></p>

        <div class="social-media">
            <p>@lang('main.acc.socialogin')</p>
            <ul>
                <li><a href="{{ url('/auth/redirect/google') }}"><img src="{{ asset('/assets/images/google.png') }}"></a></li>
            </ul>
        </div>
    </form>

    <div class="sub-cont">
        <div class="img">
            <div class="img-text m-up">
                <h2>@lang('main.acc.createAcc')</h2>
                <p>@lang('main.acc.regDesc')</p>
            </div>
            <div class="img-text m-in">
                <h2>@lang('main.acc.login')</h2>
                <p></p>
            </div>
            <div class="img-btn">
                <span class="m-up">@lang('main.acc.register')</span>
                <span class="m-in">@lang('main.acc.login')</span>
            </div>
        </div>
        <div class="form sign-up">
            <h2>@lang('main.acc.createAcc')</h2>
            <form action="{{ route('register') }}" id="login2" method="POST">
                @csrf
                <label>
                    <span>@lang('main.acc.username')</span>
                    <input id="user" name="username" type="text">
                </label>
                <label>
                    <span>@lang('main.acc.fullname')</span>
                    <input id="full-name" name="name" type="text">
                </label>
                <label>
                    <span>Email</span>
                    <input id="email" name="email" type="email">
                </label>
                <label>
                    <span>@lang('main.acc.password')</span>
                    <input id="pass" name="password" type="password">
                </label>
                <label>
                    <span>@lang('main.acc.birthday')</span>
                    <input id="date" name="birthday" type="date">
                </label>
                <label>
                    <span>@lang('main.acc.gender')</span>
                    <select name="gender" id="">
                        @foreach (config('app.gender') as $key => $value)
                            <option value="{{ $key }}"> @lang('main.acc.'.$value) </option>
                        @endforeach
                    </select>

                </label>
                <button id="sign-up" type="submit" class="submit">@lang('main.acc.register')</button>
            </form>
        </div>
    </div>
</div>

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
            "name":{
                required: true,
            },
            "email":{
                required: true,
                email: true
            },
            "birthday":{
                required: true,
                date: true
            },
			"password": {
				required: true,
				minlength: 8
			},

		},
		messages: {
			"username": {
				required: "*Bạn chưa nhập tên đăng nhập",
				maxlength: "*Hãy nhập tối đa 25 ký tự"
			},
            "name": {
				required: "*Bạn chưa nhập tên",
				maxlength: "*Hãy nhập tối đa 25 ký tự"
			},
            "email": {
				required: "*Bạn chưa nhập email",
				email: "*Nhập sai định dạng email"
			},
            "birthday": {
				required: "*Bạn chưa nhập ngày sinh",
				date: "*Nhập sai ngày"
			},
			"password": {
				required: "*Bạn chưa nhập password",
				minlength: "*Hãy nhập ít nhất 8 ký tự"
			},

        },

	});


    $("#login").validate({
		onfocusout: false,
		onkeyup: false,
		onclick: false,
		rules: {
			"username": {
				required: true,
				maxlength: 25
			},
			"password": {
				required: true,
				minlength: 8
			},

		},
		messages: {
			"username": {
				required: "*Bạn chưa nhập tên đăng nhập",
				maxlength: "*Hãy nhập tối đa 25 ký tự"
			},
			"password": {
				required: "*Bạn chưa nhập password",
				minlength: "*Hãy nhập ít nhất 8 ký tự"
			},

        },

	});

</script>