.class public Lcom/google/auth/oauth2/OAuth2Credentials$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/google/auth/oauth2/AccessToken;

.field private b:Ljava/time/Duration;

.field private c:Ljava/time/Duration;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_REFRESH_MARGIN:Ljava/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b:Ljava/time/Duration;

    .line 3
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_EXPIRATION_MARGIN:Ljava/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c:Ljava/time/Duration;

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/OAuth2Credentials;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_REFRESH_MARGIN:Ljava/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b:Ljava/time/Duration;

    .line 6
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->DEFAULT_EXPIRATION_MARGIN:Ljava/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c:Ljava/time/Duration;

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 8
    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->access$400(Lcom/google/auth/oauth2/OAuth2Credentials;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b:Ljava/time/Duration;

    .line 9
    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->access$500(Lcom/google/auth/oauth2/OAuth2Credentials;)Ljava/time/Duration;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c:Ljava/time/Duration;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 4

    new-instance v0, Lcom/google/auth/oauth2/OAuth2Credentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->a:Lcom/google/auth/oauth2/AccessToken;

    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b:Ljava/time/Duration;

    iget-object v3, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c:Ljava/time/Duration;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;Ljava/time/Duration;Ljava/time/Duration;)V

    return-object v0
.end method

.method public b()Lcom/google/auth/oauth2/AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->a:Lcom/google/auth/oauth2/AccessToken;

    return-object v0
.end method

.method public c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$d;->a:Lcom/google/auth/oauth2/AccessToken;

    return-object p0
.end method
