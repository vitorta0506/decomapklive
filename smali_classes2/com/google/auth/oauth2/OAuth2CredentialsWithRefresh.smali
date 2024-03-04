.class public Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;
.super Lcom/google/auth/oauth2/OAuth2Credentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;,
        Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;
    }
.end annotation


# instance fields
.field private final refreshHandler:Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;


# direct methods
.method protected constructor <init>(Lcom/google/auth/oauth2/AccessToken;Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/auth/oauth2/AccessToken;->getExpirationTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The provided access token must contain the expiration time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;->refreshHandler:Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;

    return-void
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;-><init>(Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$a;)V

    return-object v0
.end method


# virtual methods
.method public getRefreshHandler()Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;->refreshHandler:Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;

    return-object v0
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;->refreshHandler:Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;

    invoke-interface {v0}, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;->a()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    return-object v0
.end method
