# 🇹🇳 Inventory Management System - Tunisia Version

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
## 🖼️ Aperçu du tableau de bord

![Dashboard](screenshots/home%203.png)

## 🔐 Page de connexion

![Login](screenshots/login.png)

## 🧑‍💻 Enregistrement (Register)

L'utilisateur peut créer un compte via la page d'enregistrement.

![Register](screenshots/register.png)

---

## 📋 Liste des produits

Affiche tous les produits disponibles avec leurs quantités.

![Liste des produits](screenshots/products_list.png)

---

## ➕ Ajouter un produit

Formulaire permettant l'ajout d'un nouveau produit (nom, quantité initiale, utilisateur).

![Ajouter un produit](screenshots/add_product.png)

---

## ✏️ Modifier un produit

Permet de mettre à jour le nom ou la quantité d’un produit.

![Modifier un produit](screenshots/edit_product.png)

---

## 🔄 Mouvement de produit

Les utilisateurs peuvent déplacer un produit d’un emplacement à un autre avec quantité, date et origine/destination.

![Mouvement de produit](screenshots/move_product.png)

---

## 📍 Ajouter un emplacement (location)

Ajoute un nouveau site géographique (ex. Sfax, Tunis, etc.) dans la base.

![Ajouter une location](screenshots/add_location.png)

---

## 📌 Liste des emplacements

Liste tous les emplacements disponibles dans la base.

![Liste des locations](screenshots/location_list.png)

---

## 🛠️ Modifier un emplacement

Permet de modifier le nom d’un emplacement.

![Modifier une location](screenshots/edit_location.png)

---

## 🚚 Liste des mouvements

Affiche tous les transferts de produits d’un emplacement à un autre.

![Liste des mouvements](screenshots/movements_list.png)

---

## 📊 Courbe de mouvements

Représente graphiquement les mouvements de stock sur une période.

![Courbe de mouvement](screenshots/movement_chart.png)

---
