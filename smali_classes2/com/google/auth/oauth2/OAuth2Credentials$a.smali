.class Lcom/google/auth/oauth2/OAuth2Credentials$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;->getOrCreateRefreshTask()Lcom/google/auth/oauth2/OAuth2Credentials$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/auth/oauth2/OAuth2Credentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/OAuth2Credentials;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$a;->a:Lcom/google/auth/oauth2/OAuth2Credentials;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/OAuth2Credentials$h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$a;->a:Lcom/google/auth/oauth2/OAuth2Credentials;

    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$a;->a:Lcom/google/auth/oauth2/OAuth2Credentials;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials$h;->c(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)Lcom/google/auth/oauth2/OAuth2Credentials$h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$a;->a()Lcom/google/auth/oauth2/OAuth2Credentials$h;

    move-result-object v0

    return-object v0
.end method
