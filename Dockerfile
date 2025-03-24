# Usa un'immagine base con OpenJDK 17
FROM openjdk:17-jdk-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia il jar dell'applicazione 
COPY target/calendarscheduler-1.0-SNAPSHOT.jar app.jar

# Espone la porta su cui l'applicazione gira
EXPOSE 8080

# Comando per avviare l'applicazione
ENTRYPOINT ["java", "-jar", "app.jar"]
