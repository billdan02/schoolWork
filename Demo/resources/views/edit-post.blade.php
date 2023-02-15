<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
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
    <h1>Edit Post</h1>
    <form action="/edit-post/{{$post->id}}" method="POST">
        @csrf
        @method('PUT')
        <input type="text" name="title" value="{{$post->title}}">
        <textarea name="body">{{$post->body}}</textarea>
        <br>
        <button>Save Changes</button>
    </form>
</body>
</html>