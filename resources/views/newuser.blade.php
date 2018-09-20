@extends('master-layout')

@section('content')

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <h2>New User</h2>
            @if (count($errors) > 0)
                <div class = "alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <form method="post" action="/registeruser">
                {{csrf_field()}}
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" name="password_confirmation" class="form-control" placeholder="">
                </div>

                <div class="form-group">
                    <input type="submit" class="form-control btn-primary" value="Submit">
                </div>




            </form>
        </div>
        <div class="col-md-3"></div>
    </div>
@endsection
