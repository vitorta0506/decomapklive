.class public abstract Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
.super Lcom/google/auth/oauth2/GoogleCredentials$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ExternalAccountCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

.field protected i:Lcom/google/auth/oauth2/k;

.field protected j:Ls5/b;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->j:Ls5/b;

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$100(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->d:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$200(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->e:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$300(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$400(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->g:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$500(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->k:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$600(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    .line 10
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$000(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->l:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$700(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->m:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$800(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$900(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->o:Ljava/util/Collection;

    .line 14
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$1000(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Lcom/google/auth/oauth2/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->i:Lcom/google/auth/oauth2/k;

    .line 15
    invoke-static {p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->access$1100(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract f()Lcom/google/auth/oauth2/ExternalAccountCredentials;
.end method

.method public g(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->m:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lcom/google/auth/oauth2/ExternalAccountCredentials$c;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    return-object p0
.end method

.method public k(Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->j:Ls5/b;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/util/Collection;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ExternalAccountCredentials$b;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->o:Ljava/util/Collection;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->p:Ljava/lang/String;

    return-object p0
.end method
