.class public Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;
.super Lcom/google/auth/oauth2/OAuth2Credentials$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;->d()Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;->e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;
    .locals 3

    new-instance v0, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;

    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;->d:Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;

    invoke-direct {v0, v1, v2}, Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh;-><init>(Lcom/google/auth/oauth2/AccessToken;Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$c;)V

    return-object v0
.end method

.method public e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2CredentialsWithRefresh$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;

    return-object p0
.end method
