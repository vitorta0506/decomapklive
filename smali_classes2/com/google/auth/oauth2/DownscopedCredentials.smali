.class public final Lcom/google/auth/oauth2/DownscopedCredentials;
.super Lcom/google/auth/oauth2/OAuth2Credentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/DownscopedCredentials$b;
    }
.end annotation


# static fields
.field private static final TOKEN_EXCHANGE_ENDPOINT:Ljava/lang/String; = "https://sts.googleapis.com/v1/token"


# instance fields
.field private final credentialAccessBoundary:Lcom/google/auth/oauth2/h;

.field private final sourceCredential:Lcom/google/auth/oauth2/GoogleCredentials;

.field private final transient transportFactory:Ls5/b;


# direct methods
.method private constructor <init>(Lcom/google/auth/oauth2/GoogleCredentials;Lcom/google/auth/oauth2/h;Ls5/b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>()V

    .line 3
    const-class v0, Ls5/b;

    sget-object v1, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 4
    invoke-static {v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p3, v0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls5/b;

    iput-object p3, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->transportFactory:Ls5/b;

    .line 6
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/GoogleCredentials;

    iput-object p1, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->sourceCredential:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 7
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/h;

    iput-object p1, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->credentialAccessBoundary:Lcom/google/auth/oauth2/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/GoogleCredentials;Lcom/google/auth/oauth2/h;Ls5/b;Lcom/google/auth/oauth2/DownscopedCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auth/oauth2/DownscopedCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;Lcom/google/auth/oauth2/h;Ls5/b;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/DownscopedCredentials$b;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/DownscopedCredentials$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/DownscopedCredentials$b;-><init>(Lcom/google/auth/oauth2/DownscopedCredentials$a;)V

    return-object v0
.end method


# virtual methods
.method public getCredentialAccessBoundary()Lcom/google/auth/oauth2/h;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->credentialAccessBoundary:Lcom/google/auth/oauth2/h;

    return-object v0
.end method

.method public getSourceCredentials()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->sourceCredential:Lcom/google/auth/oauth2/GoogleCredentials;

    return-object v0
.end method

.method getTransportFactory()Ls5/b;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->transportFactory:Ls5/b;

    return-object v0
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->sourceCredential:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshIfExpired()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v0, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->sourceCredential:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 3
    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "urn:ietf:params:oauth:token-type:access_token"

    .line 4
    invoke-static {v0, v1}, Lcom/google/auth/oauth2/r;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/r$b;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/auth/oauth2/r$b;->a()Lcom/google/auth/oauth2/r;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->transportFactory:Ls5/b;

    .line 8
    invoke-interface {v1}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v1

    const-string v2, "https://sts.googleapis.com/v1/token"

    .line 9
    invoke-static {v2, v0, v1}, Lcom/google/auth/oauth2/q;->d(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;)Lcom/google/auth/oauth2/q$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->credentialAccessBoundary:Lcom/google/auth/oauth2/h;

    .line 10
    invoke-virtual {v1}, Lcom/google/auth/oauth2/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/q$b;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/q$b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/auth/oauth2/q$b;->a()Lcom/google/auth/oauth2/q;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/auth/oauth2/q;->c()Lcom/google/auth/oauth2/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/auth/oauth2/s;->a()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/auth/oauth2/AccessToken;->getExpirationTime()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/google/auth/oauth2/DownscopedCredentials;->sourceCredential:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/auth/oauth2/AccessToken;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 16
    new-instance v2, Lcom/google/auth/oauth2/AccessToken;

    .line 17
    invoke-virtual {v0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/auth/oauth2/AccessToken;->getExpirationTime()Ljava/util/Date;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v2

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to refresh the provided source credential."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
