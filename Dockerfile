# Utilisation de l'image officielle Python 3.8
FROM python:3.8

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie du fichier des dépendances dans le conteneur
COPY requirements.txt .

# Installation des dépendances
RUN pip install -r requirements.txt

# Copie des fichiers de l'application dans le conteneur
COPY . .

# Exposition du port 5000
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "main.py"]
