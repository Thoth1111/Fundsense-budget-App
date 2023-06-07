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

# 📖 FundSense Mobile Budget App <a name="about-project"></a>

FundSense budget app is a mobile web application where a user can manage their budget. They can create a list of categories in which a list of transactions can be associated. They can also see the amounts spent or allotted to any category or transaction they own. 

Watch the [Video Presentation](https://www.loom.com/share/4198572db7fe4ee4afe6cd4c90c4df00)


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
Access the deployed [demo](https://fundsense-budget-app.onrender.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps:

### Prerequisites

In order to run this project you need: rails, cloudinary for active_storage service. 

### Setup

Clone the repo and open terminal in the project root directory

### Install

Install this project with:

```sh
bundle install
```

Create `.env` file in the root directory and add your database configurations and cloudinary credentials (See `.env.example`). If a cloudinary account is unavailable, change the `config.active_storage.service` value to `:disk` in the development environment and include this line `config.active_storage.url_options = { host: 'your-production-domain.com' }`. Replace `your-production-domain.com` with your host name. 

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
