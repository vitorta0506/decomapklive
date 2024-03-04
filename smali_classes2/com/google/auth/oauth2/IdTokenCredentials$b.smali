.class public Lcom/google/auth/oauth2/IdTokenCredentials$b;
.super Lcom/google/auth/oauth2/OAuth2Credentials$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/IdTokenCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Lcom/google/auth/oauth2/IdTokenProvider;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/auth/oauth2/IdTokenProvider$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/IdTokenCredentials$b;->d()Lcom/google/auth/oauth2/IdTokenCredentials;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/auth/oauth2/IdTokenCredentials;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/IdTokenCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/auth/oauth2/IdTokenCredentials;-><init>(Lcom/google/auth/oauth2/IdTokenCredentials$b;Lcom/google/auth/oauth2/IdTokenCredentials$a;)V

    return-object v0
.end method

.method public e()Lcom/google/auth/oauth2/IdTokenProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdTokenCredentials$b;->d:Lcom/google/auth/oauth2/IdTokenProvider;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/auth/oauth2/IdTokenProvider$Option;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/IdTokenCredentials$b;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdTokenCredentials$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Lcom/google/auth/oauth2/IdTokenProvider;)Lcom/google/auth/oauth2/IdTokenCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/IdTokenCredentials$b;->d:Lcom/google/auth/oauth2/IdTokenProvider;

    return-object p0
.end method

.method public i(Ljava/util/List;)Lcom/google/auth/oauth2/IdTokenCredentials$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/auth/oauth2/IdTokenProvider$Option;",
            ">;)",
            "Lcom/google/auth/oauth2/IdTokenCredentials$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/auth/oauth2/IdTokenCredentials$b;->f:Ljava/util/List;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/auth/oauth2/IdTokenCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/IdTokenCredentials$b;->e:Ljava/lang/String;

    return-object p0
.end method
