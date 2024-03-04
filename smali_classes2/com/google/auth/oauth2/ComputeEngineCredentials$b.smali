.class public Lcom/google/auth/oauth2/ComputeEngineCredentials$b;
.super Lcom/google/auth/oauth2/GoogleCredentials$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ComputeEngineCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Ls5/b;

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/ComputeEngineCredentials;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->access$000(Lcom/google/auth/oauth2/ComputeEngineCredentials;)Ls5/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->d:Ls5/b;

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->access$100(Lcom/google/auth/oauth2/ComputeEngineCredentials;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->f()Lcom/google/auth/oauth2/ComputeEngineCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->f()Lcom/google/auth/oauth2/ComputeEngineCredentials;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/auth/oauth2/ComputeEngineCredentials;
    .locals 4

    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->d:Ls5/b;

    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->e:Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/auth/oauth2/ComputeEngineCredentials;-><init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/auth/oauth2/ComputeEngineCredentials$a;)V

    return-object v0
.end method

.method public g(Ls5/b;)Lcom/google/auth/oauth2/ComputeEngineCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;->d:Ls5/b;

    return-object p0
.end method
