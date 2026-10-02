# Expressify Spring Boot – Folder Structure

```
Expressify/
├── pom.xml
├── Dockerfile
├── README.md
├── FOLDER_STRUCTURE.md
├── COMPONENT_DIAGRAM.md
├── package.json
├── postcss.config.js
├── tailwind.config.js
├── docs/
│   └── screenshots/
│       ├── 01-landing.png
│       ├── 02-login-register.png
│       ├── 03-login.png
│       ├── 04-home-feed.png
│       ├── 05-explore.png
│       ├── 06-dm-chat.png
│       ├── 07-setting-profile.png
│       ├── 08-create-post.png
│       ├── 09-profile.png
│       ├── 10-notification.png
│       ├── 11-friends.png
│       ├── 12-admin-dashboard.png
│       ├── 13-admin-user-management.png
│       ├── 14-admin-content analysis.png
│       ├── database-schema.png
│       └── project-workflow.png
│
├── uploads/
│   ├── posts/
│   │   └── .gitkeep
│   └── profiles/
│       └── .gitkeep
│
└── src/
    ├── main/
    │   ├── java/com/expressify/
    │   │   ├── ExpressifyApplication.java
    │   │   │
    │   │   ├── config/
    │   │   │   ├── AdminDataInitializer.java   # Admin & MAAS user startup initialization
    │   │   │   ├── SecurityConfig.java          # Form login, session security, BCrypt
    │   │   │   ├── WebMvcConfig.java             # Static uploads mapping
    │   │   │   └── WebSocketConfig.java          # STOMP / WebSocket message broker config
    │   │   │
    │   │   ├── controller/
    │   │   │   ├── AdminAuthController.java     # /admin/login, /admin/logout
    │   │   │   ├── AdminController.java         # /admin/dashboard, users, posts, analysis
    │   │   │   ├── ApiController.java           # REST: likes, comments, delete_post
    │   │   │   ├── AuthController.java          # GET /auth, POST /auth/register
    │   │   │   ├── DmController.java            # /dm, /api/dm
    │   │   │   ├── ExploreController.java      # /explore
    │   │   │   ├── FriendApiController.java     # REST: friend_request
    │   │   │   ├── FriendsController.java      # /friends
    │   │   │   ├── HomeController.java          # /, /home
    │   │   │   ├── NotificationsController.java  # /notifications
    │   │   │   ├── PostController.java          # /posts (create post)
    │   │   │   ├── ProfileController.java      # /profile, /profile?id=
    │   │   │   ├── SettingsController.java      # /settings + theme & password POSTs
    │   │   │   └── ChatWebSocketController.java # STOMP messaging controller
    │   │   │
    │   │   ├── dto/
    │   │   │   ├── ChatMessageDto.java
    │   │   │   ├── CommentDto.java
    │   │   │   └── PostDto.java
    │   │   │
    │   │   ├── entity/
    │   │   │   ├── Admin.java
    │   │   │   ├── AdminNotification.java
    │   │   │   ├── ChatMessage.java
    │   │   │   ├── Comment.java
    │   │   │   ├── CommentLike.java
    │   │   │   ├── FriendRequest.java
    │   │   │   ├── Like.java
    │   │   │   ├── Media.java
    │   │   │   ├── Notification.java
    │   │   │   ├── Post.java
    │   │   │   ├── PostHashtag.java
    │   │   │   ├── Report.java
    │   │   │   ├── Settings.java
    │   │   │   └── User.java
    │   │   │
    │   │   ├── interceptor/
    │   │   │   └── AdminAuthInterceptor.java    # /admin route protection interceptor
    │   │   │
    │   │   ├── repository/
    │   │   │   ├── AdminNotificationRepository.java
    │   │   │   ├── AdminRepository.java
    │   │   │   ├── ChatMessageRepository.java
    │   │   │   ├── CommentLikeRepository.java
    │   │   │   ├── CommentRepository.java
    │   │   │   ├── FriendRequestRepository.java
    │   │   │   ├── LikeRepository.java
    │   │   │   ├── MediaRepository.java
    │   │   │   ├── NotificationRepository.java
    │   │   │   ├── PostHashtagRepository.java
    │   │   │   ├── PostRepository.java
    │   │   │   ├── ReportRepository.java
    │   │   │   ├── SettingsRepository.java
    │   │   │   └── UserRepository.java
    │   │   │
    │   │   ├── service/
    │   │   │   ├── ChatService.java
    │   │   │   ├── CommentService.java
    │   │   │   ├── ContentModerationService.java # Banned-words filter
    │   │   │   ├── CustomUserDetailsService.java
    │   │   │   ├── FriendService.java
    │   │   │   ├── LikeService.java
    │   │   │   ├── MaasChatbotService.java      # Gemini AI chatbot & fallback
    │   │   │   ├── NotificationService.java
    │   │   │   ├── PostService.java
    │   │   │   ├── ReportService.java
    │   │   │   └── UserService.java
    │   │   │
    │   │   └── util/
    │   │       └── PasswordPolicy.java          # Password complexity validation
    │   │
    │   └── resources/
    │       ├── application.properties           # Server, MySQL, Gemini API config
    │       ├── application-dev.properties       # H2 in-memory dev profile
    │       ├── moderation/
    │       │   └── banned-words.txt
    │       │
    │       ├── static/
    │       │   ├── css/
    │       │   │   ├── tailwind-input.css
    │       │   │   └── tailwind.css
    │       │   ├── js/
    │       │   │   ├── app.js
    │       │   │   └── galaxy.js
    │       │   └── assets/
    │       │       └── logo.png
    │       │
    │       └── templates/
    │           ├── index.html
    │           ├── auth.html
    │           ├── home.html
    │           ├── posts.html
    │           ├── profile.html
    │           ├── explore.html
    │           ├── friends.html
    │           ├── notifications.html
    │           ├── settings.html
    │           ├── dm.html
    │           ├── fragments/
    │           │   └── layout.html
    │           └── admin/
    │               ├── dashboard.html
    │               ├── users.html
    │               ├── posts.html
    │               ├── post-detail.html
    │               ├── user-profile.html
    │               ├── content-analysis.html
    │               ├── login.html
    │               └── fragments.html
```

## Configuration summary

| File | Purpose |
|------|--------|
| `application.properties` | Port `${PORT:8080}`, MySQL database `${DB_HOST:localhost}:${DB_PORT:3306}/${DB_NAME:expressify_db}`, Gemini API key `${MAAS_GEMINI_API_KEY:}` |
| `application-dev.properties` | H2 in-memory dev profile (`-Dspring-boot.run.profiles=dev`) |
| `SecurityConfig` | Permits public routes (`/`, `/auth`, static assets); configures session-based form login, logout, and BCrypt encoding |
| `AdminAuthInterceptor` | Protects `/admin/**` routes against unauthorized access |
| `WebSocketConfig` | Configures `/ws` STOMP endpoint with SockJS fallback and `/app`, `/topic`, `/queue` message prefixes |

## Main Application Routes

| Route | Handler | Purpose |
|-------|---------|---------|
| `/` | `HomeController` | Landing page |
| `/auth` | `AuthController` | Login / Register page |
| `/home` | `HomeController` | Main user feed |
| `/posts` | `PostController` | Post creation page |
| `/explore` | `ExploreController` | Explore content & people |
| `/friends` | `FriendsController` | Friends & friend requests |
| `/dm` | `DmController` | Real-time direct messages & MAAS AI chat |
| `/notifications` | `NotificationsController` | Activity notifications |
| `/settings` | `SettingsController` | Account preferences, theme (light/dark/unite), password |
| `/admin/*` | `AdminController` | Admin dashboard, user management, posts, content analysis |
