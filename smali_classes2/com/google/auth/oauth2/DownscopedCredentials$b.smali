.class public Lcom/google/auth/oauth2/DownscopedCredentials$b;
.super Lcom/google/auth/oauth2/OAuth2Credentials$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/DownscopedCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Lcom/google/auth/oauth2/GoogleCredentials;

.field private e:Lcom/google/auth/oauth2/h;

.field private f:Ls5/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/DownscopedCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/DownscopedCredentials$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/DownscopedCredentials$b;->d()Lcom/google/auth/oauth2/DownscopedCredentials;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/auth/oauth2/DownscopedCredentials;
    .locals 5

    new-instance v0, Lcom/google/auth/oauth2/DownscopedCredentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/DownscopedCredentials$b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    iget-object v2, p0, Lcom/google/auth/oauth2/DownscopedCredentials$b;->e:Lcom/google/auth/oauth2/h;

    iget-object v3, p0, Lcom/google/auth/oauth2/DownscopedCredentials$b;->f:Ls5/b;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/auth/oauth2/DownscopedCredentials;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;Lcom/google/auth/oauth2/h;Ls5/b;Lcom/google/auth/oauth2/DownscopedCredentials$a;)V

    return-object v0
.end method
