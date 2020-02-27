<h2>{{ trans('account.title_register') }}</h2>
<p class="border-bottom-title-login"></p>
<form action="{{route('postRegister')}}" method="post" class="box">
    {!! csrf_field() !!}
    <div class="form_content {{ (old('check_red'))?'in':'' }}" id="collapseExample">


        <div class="form-group{{ $errors->has('reg_first_name') ? ' has-error' : '' }}">
            <input type="text"
                   class="is_required validate account_input form-control {{ ($errors->has('reg_first_name'))?"input-error":"" }}"
                   name="reg_first_name" placeholder="{{ trans('account.name') }}"
                   value="{{ old('reg_first_name') }}">
            @if ($errors->has('reg_first_name'))
                <span class="help-block">
                {{ $errors->first('reg_first_name') }}
            </span>
            @endif
        </div>


        <div class="form-group{{ $errors->has('reg_email') ? ' has-error' : '' }}">
            <input type="text"
                   class="is_required validate account_input form-control {{ ($errors->has('reg_email'))?"input-error":"" }}"
                   name="reg_email" placeholder="{{ trans('account.email') }}" value="{{ old('reg_email') }}">
            @if ($errors->has('reg_email'))
                <span class="help-block">
                {{ $errors->first('reg_email') }}
            </span>
            @endif
        </div>

        <div class="form-group{{ $errors->has('reg_password') ? ' has-error' : '' }}">
            <input type="password"
                   class="is_required validate account_input form-control {{ ($errors->has('reg_password'))?"input-error":"" }}"
                   name="reg_password" placeholder="{{ trans('account.password') }}" value="">
            @if ($errors->has('reg_password'))
                <span class="help-block">
                {{ $errors->first('reg_password') }}
            </span>
            @endif
        </div>
        <div class="form-group{{ $errors->has('reg_password_confirmation') ? ' has-error' : '' }}">
            <input type="password"
                   class="is_required validate account_input form-control {{ ($errors->has('reg_password_confirmation'))?"input-error":"" }}"
                   placeholder="{{ trans('account.password_confirm') }}" name="reg_password_confirmation" value="">
            @if ($errors->has('reg_password_confirmation'))
                <span class="help-block">
                {{ $errors->first('reg_password_confirmation') }}
            </span>
            @endif
        </div>
        <input type="hidden" name="check_red" value="1">
        <div class="submit">
            <button type="submit" name="SubmitCreate" class="btn btn-success">{{ trans('account.signup') }}</button>
        </div>
    </div>

</form>
