.class public final Lge/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lge/a;


# direct methods
.method constructor <init>(Lge/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/f;->a:Lge/a;

    return-void
.end method

.method private a(Z)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;
    .locals 2

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;-><init>()V

    iget-object v1, p0, Lge/f;->a:Lge/a;

    .line 2
    invoke-virtual {v1}, Lge/a;->b()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;->kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;->is_for_firebase_authentication(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(ZZ)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;-><init>()V

    .line 2
    invoke-direct {p0, p2}, Lge/f;->a(Z)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->log_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;

    move-result-object p2

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->is_success(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    invoke-direct {p2}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;-><init>()V

    .line 6
    invoke-virtual {p2, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lge/f;->b(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p1

    return-object p1
.end method
