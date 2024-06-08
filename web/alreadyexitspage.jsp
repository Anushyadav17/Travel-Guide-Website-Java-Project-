<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body
        {
            position: relative;
            display: flex;
            justify-content: center;
            top: 200px;
        }
        .link_404 {
        color: #fff !important;
        padding: 10px 20px;
        background: #39ac31;
        margin: 20px 0;
        display: inline-block;
      }
    </style>
</head>
<body>
    <div>
      <h1>Username already exits</h1>  
      <a  class="link_404" href="#" onclick="func()">Go Back</a>
    </div>
    <script>
        function func() {
        window. history. back();
        }
        </script>
</body>
</html>