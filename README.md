# Calendar Scheduler

**Calendar Scheduler** è un’applicazione Spring Boot sviluppata principalmente per approfondire e testare competenze lato backend, con particolare attenzione alle tecnologie Spring, Hibernate e Docker. L'applicazione simula un sistema per prenotare appuntamenti e videochiamate in fasce orarie lavorative predefinite, ottimizzando l'uso di un numero limitato di account Zoom Business (ad esempio 5 account disponibili). È presente un'interfaccia frontend minimale per consentire il test delle funzionalità implementate nel backend.

## Funzionalità Principali

- Gestione dinamica degli appuntamenti con controllo automatico della disponibilità degli account Zoom.
- Visualizzazione intuitiva degli slot disponibili per ogni settimana lavorativa.
- Possibilità di prenotare appuntamenti nei prossimi 3 mesi dall'avvio dell'applicazione.
- Impostazione predefinita dei giorni lavorativi e non lavorativi, con possibilità di modificare manualmente lo stato dei giorni (ad esempio per rendere prenotabili sabato e domenica o rendere festivo un giorno feriale).
- Inizializzazione automatizzata del database al primo avvio con Docker.

## Tecnologie Utilizzate

- **Java 17**
- **Spring Boot 3.0.2**
- **Spring Data JPA e Hibernate**
- **MySQL 8.0**
- **Docker e Docker Compose**
- **Maven**

## Struttura del Progetto

Il progetto è organizzato secondo l'architettura tipica di Spring Boot:

```
calendar-scheduler/
├── .env (non incluso per sicurezza)
├── .env.example
├── docker-compose.yml
├── Dockerfile
├── init.sql
├── pom.xml
└── src/
    └── main/
        ├── java/com/demo/calendarscheduler/
        │   ├── CalendarSchedulerApplication.java
        │   ├── config/
        │   │   └── DataInitializer.java
        │   ├── controller/
        │   │   ├── AppointmentController.java
        │   │   ├── CalendarController.java
        │   │   └── ZoomAccountController.java
        │   ├── dto/
        │   │   ├── DaySlotsDTO.java
        │   │   ├── SlotDTO.java
        │   │   └── ZoomAccountDTO.java
        │   ├── model/
        │   │   ├── Appointment.java
        │   │   ├── BookingInterval.java
        │   │   ├── DayStatus.java
        │   │   └── ZoomAccount.java
        │   ├── repository/
        │   │   ├── AppointmentRepository.java
        │   │   ├── DayStatusRepository.java
        │   │   └── ZoomAccountRepository.java
        │   └── service/
        │       ├── CalendarService.java
        │       └── DayStatusService.java
        └── resources/
            ├── application.properties
            └── static/index.html
```

### Ruolo delle Cartelle

- **Controller:** Gestisce le richieste HTTP, delegando la logica di business ai servizi.
- **Service:** Contiene tutta la logica di business, interagendo con Repository e altri servizi per validare e gestire dati e disponibilità.
- **Repository:** Interfacce JPA per interagire con il database, effettuando operazioni CRUD.
- **Model:** Definisce le entità del dominio applicativo e le relazioni tra loro.
- **DTO:** Oggetti per trasferire dati in modo semplice e sicuro verso il frontend.
- **Config:** Gestisce configurazioni e inizializzazioni automatiche (es. stato iniziale dei giorni lavorativi).

## Configurazione

Usa `.env.example` per creare un file `.env` con le variabili d’ambiente sensibili:

```dotenv
MYSQL_ROOT_PASSWORD=your_mysql_root_password
SPRING_DATASOURCE_USERNAME=your_mysql_username
SPRING_DATASOURCE_PASSWORD=your_mysql_password
```

**Nota:** Non includere mai `.env` nel repository Git per motivi di sicurezza.

## Avvio con Docker

Dopo aver configurato il file `.env`, avvia l'applicazione usando:

```bash
docker-compose up --build
```

Accedi all'applicazione all'indirizzo:

```
http://localhost:8080
```

## API REST

### Appuntamenti

- `GET /api/calendar/appointments` – Lista completa appuntamenti.
- `GET /api/calendar/appointments/{id}` – Dettagli specifici di un appuntamento.
- `POST /api/calendar/appointments` – Creazione nuovo appuntamento.

### Calendario

- `GET /api/calendar/slots?day=yyyy-MM-dd` – Slot disponibili della settimana.
- `PUT /api/calendar/days/status?date=yyyy-MM-dd` – Modifica stato giorno lavorativo/festivo.

### Account Zoom

- `GET /api/zoom-accounts` – Lista degli account Zoom.
- `POST /api/zoom-accounts` – Creazione nuovo account Zoom.

## Considerazioni Finali

- Per reinizializzare il database Docker:
  ```bash
  docker-compose down -v
  ```
- Personalizza porte e variabili d’ambiente secondo le necessità del tuo ambiente.

