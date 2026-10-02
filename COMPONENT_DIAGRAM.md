# Expressify Spring - Component Diagram

```mermaid
flowchart TB
    U[User Browser]

    subgraph Frontend[Frontend Layer]
        T[Thymeleaf Templates]
        JS[Static JS app.js]
        CSS[CSS Tailwind/Theme Assets]
    end

    subgraph Backend[Spring Boot Application]
        SEC[SecurityConfig + Spring Security]
        MVC[MVC Controllers]
        API[REST API Controllers]
        WS[WebSocket/STOMP Controllers]
        SVC[Service Layer]
        CHATBOT[MaasChatbotService + Moderation]
        UDS[CustomUserDetailsService]
    end

    subgraph Data[Persistence Layer]
        REPO[JPA Repositories]
        ENT[JPA Entities]
    end

    subgraph External[External Systems]
        DB[(MySQL expressify_db)]
        FS[(Uploads File Storage)]
        GEMINI[(Google Gemini API)]
    end

    U --> T
    U --> JS
    U --> CSS

    T --> MVC
    JS --> API
    JS --> WS

    MVC --> SEC
    API --> SEC
    WS --> SEC

    MVC --> SVC
    API --> SVC
    WS --> SVC

    SEC --> UDS
    UDS --> REPO

    SVC --> REPO
    REPO --> ENT
    REPO --> DB

    MVC --> FS
    API --> FS
    SVC --> CHATBOT
    
```

## Main Components Mapped

- Frontend: Thymeleaf pages, `static/js/app.js`, CSS/theme assets.
- Controllers: MVC pages (`HomeController`, `ProfileController`, `SettingsController`), REST APIs (`ApiController`, `FriendApiController`, `DmController`), and WebSocket controller (`ChatWebSocketController`).
- Services: `UserService`, `PostService`, `CommentService`, `LikeService`, `FriendService`, `NotificationService`, `ChatService`, `ReportService`, moderation/chatbot services.
- Security: `SecurityConfig` + `CustomUserDetailsService`.
- Data: JPA repositories/entities backed by MySQL.
- Integration points: file uploads and Gemini API.
