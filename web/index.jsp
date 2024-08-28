<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/styles.css">
    </head>
    <body>
        <div class="container">
            <div class="header-section">
                <h1>Home</h1>
                <h2>User Details</h2>
               
            </div>
            <div class="user-details">
                <div><span>Mobile:</span> ${sessionScope.user.mobile}</div>
                <div><span>Name:</span> ${sessionScope.user.name}</div>
                <div><span>Gender:</span> ${sessionScope.user.gender}</div>
                <div><span>Country:</span> ${sessionScope.user.country}</div>
            </div>
             <form action="User_Logout">
                    <button type="submit" class="logout-button">Logout</button>
                </form>
        </div>
    </body>
</html>
