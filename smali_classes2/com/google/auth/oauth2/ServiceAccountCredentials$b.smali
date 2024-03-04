.class public Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
.super Lcom/google/auth/oauth2/GoogleCredentials$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ServiceAccountCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/security/PrivateKey;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/net/URI;

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ls5/b;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    const/16 v0, 0xe10

    .line 2
    iput v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->p:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q:Z

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/ServiceAccountCredentials;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    const/16 v0, 0xe10

    .line 6
    iput v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->p:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q:Z

    .line 9
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$1400(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->d:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$1500(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->e:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$1600(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->f:Ljava/security/PrivateKey;

    .line 12
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$1700(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->g:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$1800(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->k:Ljava/util/Collection;

    .line 14
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$1900(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->l:Ljava/util/Collection;

    .line 15
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2000(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ls5/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->m:Ls5/b;

    .line 16
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2100(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->j:Ljava/net/URI;

    .line 17
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2200(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->h:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2300(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->i:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2400(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->n:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2500(Lcom/google/auth/oauth2/ServiceAccountCredentials;)I

    move-result v0

    iput v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o:I

    .line 21
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2600(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->p:Z

    .line 22
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->access$2700(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q:Z

    return-void
.end method

.method static synthetic f(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)I
    .locals 0

    iget p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o:I

    return p0
.end method

.method static synthetic j(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->p:Z

    return p0
.end method

.method static synthetic k(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q:Z

    return p0
.end method

.method static synthetic l(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->f:Ljava/security/PrivateKey;

    return-object p0
.end method

.method static synthetic m(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->k:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic o(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->l:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic p(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ls5/b;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->m:Ls5/b;

    return-object p0
.end method

.method static synthetic q(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->j:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic r(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public B(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public C(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public D(Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->k:Ljava/util/Collection;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->l:Ljava/util/Collection;

    return-object p0
.end method

.method public E(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->k:Ljava/util/Collection;

    .line 2
    iput-object p2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->l:Ljava/util/Collection;

    return-object p0
.end method

.method public F(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public G(Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->j:Ljava/net/URI;

    return-object p0
.end method

.method public H(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->p:Z

    return-object p0
.end method

.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;-><init>(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)V

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public w(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q:Z

    return-object p0
.end method

.method public x(Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->m:Ls5/b;

    return-object p0
.end method

.method public y(I)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0xe10

    :cond_0
    iput p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o:I

    return-object p0
.end method

.method public z(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->f:Ljava/security/PrivateKey;

    return-object p0
.end method
