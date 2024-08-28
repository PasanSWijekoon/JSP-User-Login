<<<<<<< Upstream, based on origin/main
# User Authentication Web Application 1

## Overview

This project is a simple Java web application that demonstrates user authentication and session management using Java Servlets and JSP. It includes the ability to register users, log in, and manage session-based user authentication, with filters ensuring that only authorized users can access certain pages.

## Features

- **User Registration**: Allows new users to register by providing their mobile number, name, gender, country, and password.
- **User Login**: Users can log in using their registered mobile number and password.
- **Session Management**: User sessions are managed to ensure that only logged-in users can access protected pages.
- **Filters**: Includes filters to:
  - Prevent logged-in users from accessing the login and registration pages.
  - Ensure only logged-in users can access certain pages (e.g., `index.jsp`).

## Project Structure

```plaintext
/src
  /controller
    - User_Login.java
    - User_Logout.java
    - User_Registration.java
  /model
    - User.java
    - Filter1.java
    - Filter2.java
    - Listner1.java
  /webapp
    - user_login.jsp
    - user_registration.jsp
    - index.jsp
```

### Class Descriptions

- **User.java**: A model class representing a user, including fields for mobile number, name, gender, country, and password. Implements `Serializable` for session storage.

- **Listner1.java**: A `ServletContextListener` that initializes a `HashMap` to store user data when the application starts.

- **User_Login.java**: A servlet that handles user login. It checks the credentials against the stored user data and initiates a session upon successful login.

- **User_Logout.java**: A servlet that handles user logout by invalidating the current session and redirecting the user to the login page.

- **User_Registration.java**: A servlet that handles user registration. It checks for duplicate mobile numbers and stores user details securely.

- **Filter1.java**: A filter that ensures only authenticated users can access certain pages, redirecting unauthenticated users to the login page.

- **Filter2.java**: A filter that prevents authenticated users from accessing the login and registration pages, redirecting them to the home page (`index.jsp`) instead.

If you're using GlassFish Server with NetBeans instead of Apache Tomcat, here are the steps to set up your project:

### Installation Steps for NetBeans with GlassFish Server

#### Prerequisites

- **Java Development Kit (JDK) 8 or higher**: Ensure you have the JDK installed. You can download it from the [Oracle website](https://www.oracle.com/java/technologies/javase-downloads.html).
- **NetBeans IDE**: Download and install the latest version of NetBeans from the [official NetBeans website](https://netbeans.apache.org/).
- **GlassFish Server**: NetBeans usually comes with GlassFish Server bundled, but if not, you can download it from the [GlassFish website](https://javaee.github.io/glassfish/).

#### Steps to Set Up the Project in NetBeans

1. **Clone the Repository**:

   - Open a terminal or command prompt.
   - Navigate to the directory where you want to store the project.
   - Clone the repository using Git:

     ```bash
     git clone https://github.com/PasanSWijekoon/JSP-User-Login
     ```

2. **Open NetBeans IDE**:

   - Launch NetBeans IDE from your installed applications.

3. **Open the Project in NetBeans**:

   - Click on `File` > `Open Project...`.
   - Navigate to the directory where you cloned the project.
   - Select the project folder and click `Open Project`.

4. **Configure GlassFish Server in NetBeans**:

   - Go to `Tools` > `Servers`.
   - If GlassFish Server is not already listed, click `Add Server...`.
   - Select `GlassFish Server` and click `Next`.
   - If needed, provide the location of your GlassFish installation.
   - Set the admin username and password (the default is usually `admin` with no password, but you may have configured it differently).
   - Click `Finish` to add GlassFish as a server in NetBeans.

5. **Build the Project**:

   - Right-click on the project in the `Projects` panel.
   - Select `Clean and Build` to compile the project and resolve any dependencies.

6. **Deploy the Project**:

   - Right-click on the project in the `Projects` panel.
   - Select `Run` or `Deploy`.
   - NetBeans will build the project and deploy it to the configured GlassFish Server.

7. **Access the Application**:

   - Once the deployment is successful, open your web browser.
   - Navigate to the following URL to access the application:

     ```plaintext
     http://localhost:8080/yourproject/
     ```

     Replace `yourproject` with the actual context path of your project if it’s different.

8. **Monitor Output and Logs**:

   - Use the `Output` window in NetBeans to monitor server logs and application output. This can be helpful for debugging any issues that arise during deployment.

9. **Make Edits and Redeploy**:

   - Any changes you make to your code can be redeployed quickly using NetBeans.
   - Simply right-click the project and choose `Run` to redeploy the updated application.

### Additional Configuration and Tips

- **Admin Console**: You can access the GlassFish Admin Console at `http://localhost:4848`. This console allows you to manage deployments, configure resources, and monitor server health.
- **Database Setup**: If your application connects to a database, you can configure JDBC resources via the GlassFish Admin Console.
- **Debugging**: You can set breakpoints and debug the application directly within NetBeans, which allows you to step through your code and inspect variables.

## Usage

### User Registration

1. Navigate to the registration page: `/user_registration.jsp`.
2. Fill in the required details: mobile number, name, gender, country, and password.
3. Click "Create Account" to register.

### User Login

1. Navigate to the login page: `/user_login.jsp`.
2. Enter your mobile number and password.
3. Click "Login" to access the application.

### Logging Out

1. Click the "Logout" button on the home page (`index.jsp`) to end your session and return to the login page.

## Security Considerations

- **Password Storage**: Passwords are securely hashed before being stored. Ensure that the application uses a strong hashing algorithm like `BCrypt`.
- **Session Management**: The application manages sessions effectively, with filters ensuring that only authorized users can access certain pages.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes. Ensure your code follows the project's coding standards and includes appropriate tests.

## License

Free To Use AnyOne

## Screenshots

### User Registration Page
![User Registration Page](images/registration.png)

### User Login Page
![User Login Page](images/login.png)

### Home Page After Login
![Home Page After Login](images/home.png)
=======
# JSP-Login
>>>>>>> db03aeb Initial commit
