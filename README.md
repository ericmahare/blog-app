# Blog-App
This is a blog application where users can add, like, comment and manage their blog posts.
## Built With

- [x] Programming Language: Ruby
- [x] Framework: Ruby on Rails
- [x] Linter: [Rubocop](https://rubocop.org/)

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

- [x] A web browser like Google Chrome.
- [x] A code editor like Visual Studio Code with Git and Ruby.

You can check if Git is installed by running the following command in the terminal.
```
$ git --version
```

Likewise for Ruby installation.
```
$ ruby --version && irb
```
### testing 

You can test the code for linter errors using.
```
$ rubocop --color
```
### Setup

Clone the repository using the GitHub link provided below.

### Install

In the terminal, go to your file directory and run this command.

```
$ git clone https://github.com/ericmahare/blog-app.git

```

 ### Devise and JWT Setup
 #### 1. Generate secret key, run the following command in your termianl:

 ```
  rake secret
  
```
#### 2. Open the credentials file from the terminal. by running:

```
 EDITOR=nano rails credentials:edit 
 
```
#### 3. Paste in the following, with the key generated from running rake secret above. 
```
devise: jwt_secret_key: <rake secret key>

```

## Author

👤 **Eric Mahare**

- GitHub: [@erikmahare](https://github.com/ericmahare) 
- Twitter: [@erikmahare](https://twitter.com/erikmahare) 
- LinkedIn: [Eric Mahare](https://www.linkedin.com/in/eric-mahare-358944183/) 

👤 **Anthony Mwenyo**

- GitHub: [@mwenyoa](https://github.com/mwenyoa)
- Twitter: [@anthony_mwenyo](https://twitter.com/phayte_p)
- LinkedIn: [Anthony Mwenyo](https://linkedin.com/in/anthony-mwenyo)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to microverse and anyone who supported me through out the project

## 📝 License

This project is [MIT](./MIT.md) licensed.