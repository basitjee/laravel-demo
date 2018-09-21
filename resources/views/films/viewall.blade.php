@extends('master-layout')

@section('content')
    <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
                {{ config('app.name', 'Films') }}
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Left Side Of Navbar -->
                <ul class="navbar-nav mr-auto">

                </ul>

                <!-- Right Side Of Navbar -->
                <ul class="navbar-nav ml-auto">
                    <!-- Authentication Links -->
                    @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        <li class="nav-item">
                            @if (Route::has('register'))
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            @endif
                        </li>
                    @else
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                    @csrf
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            @if (Session::has('success'))
                <div class="alert alert-success">
                    <ul>
                        <li>{!! Session::get('success') !!}</li>
                    </ul>
                </div>
            @endif
            @if (Session::has('film_success'))
                <div class="alert alert-success">
                    <ul>
                        <li>{!! Session::get('film_success') !!}</li>
                    </ul>
                </div>
            @endif

            @if (Session::has('comment_success'))
                <div class="alert alert-success">
                    <ul>
                        <li>{!! Session::get('comment_success') !!}</li>
                    </ul>
                </div>
            @endif
            @foreach($films as $film)
                <div class="card" style="width: 46.5rem;">
                    <img class="card-img-top" src="http://127.0.0.1:8000/images/download.jpg" width="100px" height="300px" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title"> <a href="{{route('film-slug', [ 'slug' => $film['slug'] ]) }}"> {{$film['name']}}</a> </h2>
                        <h4>Description</h4>
                        <p class="card-text">{{$film['description']}}</p>
                        <h4>Release Date</h4>
                        <p class="card-text">{{$film['release_date']}}</p>
                        <h4>Ticket Price</h4>
                        <p class="card-text">{{$film['ticket_price']}}</p>
                        <h4>Country</h4>
                        <p class="card-text">{{$film['country']}}</p>
                        <h4>Genre</h4>
                        <p class="card-text">{{$film['genre']}}</p>
                    </div>
                </div>
            @endforeach
                <br>
                @if (Auth::check())
                <h4>Add A Comment</h4>
                <form method="post" action="new_comment">
                    {{csrf_field()}}
                    <input type="number" name="film_id" hidden value="{{$film['id']}}">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <label>Comment</label>
                        <br>
                        <textarea name="comment" class="form-control" rows="3" required></textarea>
                    </div>
                <button type="submit" class="btn btn-primary">
                    {{ __('Submit') }}
                </button>
                <br>
                </form>
                @endif
                <br>
                {{ $films->links() }}
        </div>

        <div class="col-md-3">
{{--
        @if($comments)
                <h4>Comments</h4>
                @foreach($comments as $comment)
                    <h6>{{$comment['name']}}</h6>
                    <p>{{$comment['comment']}}</p>
                    <p>{{$comment['created_at']}}</p>
                    <hr>
                @endforeach
            @endif
--}}

        </div>
    </div>
@endsection
