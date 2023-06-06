<a name="readme-top"></a>

<div align="center">
<h3><b>FundSense Budget App</b></h3>
</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  <!-- - [🚀 Live Demo](#live-demo) -->
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

# 📖 Rails Group Capstone <a name="about-project"></a>

FundSense budget app is a mobile web application where a user can manage their budget. They can create a list of categories in which a list of transactions can be associated. They can also see the amounts spent or allotted to any category or transaction they own. 

Watch the [Video Presentation](https://www.loom.com/share/4198572db7fe4ee4afe6cd4c90c4df00)

<img src="./doc_media/screenshot(88).png" alt="splash_screen" style="height: 400px; width: 250px"/>
<img src="./doc_media/screenshot(89).png" alt="log_in_page" style="height: 400px; width: 250px"/>
<img src="./doc_media/screenshot(90).png" alt="home_page" style="height: 400px; width: 250px"/>
<img src="./doc_media/screenshot(91).png" alt="transactions_page" style="height: 400px; width: 250px"/>
<img src="./doc_media/screenshot(92).png" alt="new_transaction_page" style="height: 400px; width: 250px"/>
<img src="./doc_media/screenshot(93).png" alt="new_category_page" style="height: 400px; width: 250px"/>


### Tech Stack <a name="tech-stack"></a>

- Ruby on Rails
- PostgreSQL
- RSpec

### Key Features <a name="key-features"></a>

- **User Authentication**

- **Active_storage for icons**

- **CanCanCan Authorizations**

- **Feature Tests**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🚀 Live Demo
Access the development [demo](https://fundsense-budget-app.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps:

### Prerequisites

In order to run this project you need: rails

### Setup

Clone the repo and open terminal in the project root directory

### Install

Install this project with:

```sh
bundle install
```

Create `.env` file in the root directory and add your databse configurations (See `.env.example`).
Run `rails db:create` in terminal to create the database.
Precompile assets by running `rails assets:precompile` & `rails assets:clean`.
Execute migrations with `rails db:migrate`.


### Usage

To run the project, execute the following command:

```sh
rails server -u webrick
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

**Alwyn Androvelle**

- Github: [@Thoth1111](https://github.com/Thoth1111)
- Twitter: [@androvelle](https://twitter.com/androvelle)
- LinkedIn: [@Alwyn](https://linkedin.com/in/alwyn-androvelle-simiyu)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Implementation of all CRUD methods**

- [ ] **Currency option and additional finance functions**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Thoth1111/Fundsense-budget-App/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project or find it useful, please consider giving it a ⭐️. Thanks!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](https://github.com/Thoth1111/Fundsense-budget-App/blob/development/LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
