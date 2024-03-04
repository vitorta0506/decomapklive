.class public Lcom/google/auth/oauth2/GoogleCredentials$a;
.super Lcom/google/auth/oauth2/OAuth2Credentials$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/GoogleCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/GoogleCredentials;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials$a;->e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;->d()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials$a;->e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials$a;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    return-object v0
.end method

.method public e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;

    return-object p0
.end method
