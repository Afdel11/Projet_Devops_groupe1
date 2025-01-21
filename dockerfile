FROM python:3.11-slim
# Variables d'environnement pour configurer le comportement de l'interpréteur Python.
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
# Installer git
RUN apt-get update && apt-get install -y git
# Definir notre repertoire de travail
RUN mkdir /app
WORKDIR /app
# Cloner le projet depuis notre depot distant
RUN git clone https://github.com/
# Mis a jour de pip et installation des dependances du projet
RUN pip install --upgrade pip
RUN pip install -r requirement.txt
# Exposer le port utiliser par flask
EXPOSE 5000
# Definier la commande par defaut pour executer l'application
CMD ["python", "app.py"]