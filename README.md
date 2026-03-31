# Pràctica A3: Qualitat en el Desenvolupament de Programari (CI/CD)
**Estudiant:** Sergi Navas  
**Universitat:** Universitat de Lleida (UdL)  
**Data d'entrega:** 31 de març de 2026

---

## 🚀 Estat del Projecte
A continuació es mostren els "badges" dels fluxos de treball automatitzats amb **GitHub Actions**:

![Django CI](https://github.com/serginavas/A3-Quality-CI-CD/actions/workflows/ci.yml/badge.svg)
![Django CD](https://github.com/serginavas/A3-Quality-CI-CD/actions/workflows/cd.yml/badge.svg)

🌐 **URL de Producció (Render):** [https://a3-quality-ci-cd.onrender.com/](https://a3-quality-ci-cd.onrender.com/)

---

## 📝 Descripció
Aquest projecte consisteix en una aplicació web bàsica desenvolupada amb **Django** per demostrar la implementació d'un cicle complet d'**Integració Contínua (CI)** i **Desplegament Continu (CD)**.

L'objectiu principal és assegurar la qualitat del programari mitjançant tests automàtics i un desplegament automatitzat al núvol (Render) utilitzant contenidors **Docker**.

---

## 🛠️ Tecnologies Utilitzades
* **Framework:** Django 6.0.3
* **Llenguatge:** Python 3.12
* **Contenidors:** Docker & Docker Compose
* **Automatització:** GitHub Actions (YAML)
* **Hosting Cloud:** Render (Pla Free)

---

## ⚙️ Configuració de CI/CD

### 1. Integració Contínua (CI)
Ubicació: `.github/workflows/ci.yml`  
Cada vegada que es realitza un `push` o un `pull_request` a la branca `main`, s'executen les següents tasques:
* Instal·lació de dependències.
* Linter i comprovació de sintaxi.
* Execució de tests automàtics de Django (`python manage.py test`).

### 2. Desplegament Continu (CD)
Ubicació: `.github/workflows/cd.yml`  
Aquest flux només s'activa si el **CI finalitza amb èxit**. Utilitza un **Deploy Hook** per notificar a Render que ha de reconstruir la imatge Docker i actualitzar el servei automàticament sense intervenció manual.
