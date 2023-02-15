<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog post</title>
    <Style>
        * {
            
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body{
            background-color: rgb(231, 231, 231);
            align-items: center;
            justify-content: center;
            height: 100vh;
            width: 100vw;
        }
    </Style>
</head>
<body>
    
    @auth
        <p>Congrats, you are logged in.</p>
        <form action="/logout" method="POST">
            @csrf
            <button>Log out</button>
        </form>

        <div style="border: 3px solid black;">
            <h2>Create a New Post</h2>
            <form action="/create-post" method="POST">
                @csrf
                <input type="text" name="title" placeholder="post title">
                <br>
                <textarea name="body" placeholder="body content....."></textarea>
                <button>Save Post</button>
            </form>
        </div>

        <div style="border: 3px solid black;">
            <h2>All Posts</h2>
            @foreach ($posts as $post)
                <div style="background-color: grey; padding: 10px; margin: 10px;">
                    <h3>{{$post['title']}} by {{$post->user->name}}</h3>
                    {{$post['body']}}
                    <p><a href="/edit-post/{{$post->id}}">Edit</a></p>
                    <form action="/delete-post/{{$post->id}}" method="POST">
                        @csrf
                        @method('DELETE')
                        <button>Delete</button>
                    </form>
                </div>
            @endforeach
        </div>

    @else
    <div style="border: 3px solid black;">
        <h2>Registration</h2>
        <form action="/register" method="POST">
            @csrf
            <input name="name" type="text" placeholder="name">
            <input name="email" type="text" placeholder="email">
            <input name="password" type="password" placeholder="password">
            <button>Register</button>
        </form>
    </div>
    <div style="border: 3px solid black;">
        <h2>Login</h2>
        <form action="/login" method="POST">
            @csrf
            <input name="loginname" type="text" placeholder="name">
            <input name="loginpassword" type="password" placeholder="password">
            <button>Log In</button>
        </form>
    </div>
    @endauth

    
</body>
</html>