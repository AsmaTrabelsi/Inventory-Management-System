# Inventory Management System

A simple inventory management web application built with **Flask**, **MySQL**, and **Bootstrap**. This project allows authenticated users to manage product stocks across various Tunisian cities, track inventory movements, and visualize product flows over time.

---

## 📦 Features

- 🧾 User Authentication (Login/Logout)
- 📍 Manage multiple locations (e.g., Tunis, Sfax, Sousse)
- 📦 Track products and their quantities
- 🔄 Record product movements between locations
- 📊 View a graph of product movements over time (interactive)
- 🧑 Role-based product views (per user)

---

## 🗺 Locations Supported

- Tunis
- Sfax
- Sousse
- Gabès
- Bizerte
- Ariana
- Kairouan
- Gafsa
- Monastir
- Nabeul

---

## 🛠 Technologies Used

- **Backend:** Flask (Python)
- **Frontend:** Jinja2 + Bootstrap + Chart.js
- **Database:** MySQL (InnoDB)
- **Authentication:** Flask-Login
- **Styling:** Bootstrap 4 / SB-Admin2 template

---

## 🚀 Getting Started

### ✅ Prerequisites

- Python 3.10+
- MySQL Server
- pip
## 🖼️ Dashboard
The dashboard provides a quick overview of inventory statistics, product quantities, and recent movements.

![Dashboard](screenshots/home%203.png)

## 🔐 Page de connexion

![Login](screenshots/login.png)

## 🧑‍💻 Enregistrement (Register)

Users can create an account using the registration page.

![Register](screenshots/registre.png)

---

## 📋 Liste des produits

Displays all products with their current quantities and associated actions.

![Liste des produits](screenshots/products.png)

---

## ➕ Ajouter un produit

Add a new product with its initial quantity.

![Ajouter un produit](screenshots/add%20products.png)

---

## ✏️ Modifier un produit

Edit the name or quantity of an existing product.

![Modifier un produit](screenshots/edit%20product.png)

---

## 🔄 Mouvement de produit

Transfer product quantities between locations.

![Mouvement de produit](screenshots/move%20product.png)

---

## 📍 Ajouter un emplacement (location)

Add new warehouse or city locations.

![Ajouter une location](screenshots/add%20location.png)

---

## 📌 Liste des emplacements

View all available locations with option to edit.

![Liste des locations](screenshots/location.png)

---

## 🛠️ Modifier un emplacement

Update a location’s name.

![Modifier une location](screenshots/edit%20location.png)

---

## 🚚 Liste des mouvements

History of all product transfers between locations.

![Liste des mouvements](screenshots/mouvement.png)

---

## 📊 Courbe de mouvements

A line chart showing product movement trends over time.

![Courbe de mouvement](screenshots/home2.png)

---
