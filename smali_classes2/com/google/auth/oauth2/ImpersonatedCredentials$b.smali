.class public Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
.super Lcom/google/auth/oauth2/GoogleCredentials$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ImpersonatedCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Lcom/google/auth/oauth2/GoogleCredentials;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ls5/b;

.field private j:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    const/16 v0, 0xe10

    .line 2
    iput v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->h:I

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/GoogleCredentials;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    const/16 v0, 0xe10

    .line 4
    iput v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->h:I

    .line 5
    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 6
    iput-object p2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/google/auth/oauth2/ImpersonatedCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/auth/oauth2/ImpersonatedCredentials;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials;-><init>(Lcom/google/auth/oauth2/ImpersonatedCredentials$b;Lcom/google/auth/oauth2/ImpersonatedCredentials$a;)V

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->f:Ljava/util/List;

    return-object v0
.end method

.method public i()Ls5/b;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->i:Ls5/b;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->h:I

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g:Ljava/util/List;

    return-object v0
.end method

.method public l()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ImpersonatedCredentials$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->f:Ljava/util/List;

    return-object p0
.end method

.method public o(Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->i:Ls5/b;

    return-object p0
.end method

.method public p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xe10

    :cond_0
    iput p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->h:I

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->j:Ljava/lang/String;

    return-object p0
.end method

.method public r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ImpersonatedCredentials$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g:Ljava/util/List;

    return-object p0
.end method

.method public s(Lcom/google/auth/oauth2/GoogleCredentials;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->e:Ljava/lang/String;

    return-object p0
.end method
