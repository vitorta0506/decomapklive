.class public Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/ApiClientHeaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->getDefaultApiClientHeaderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Ll5/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->n(Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->d:Ljava/lang/String;

    .line 6
    invoke-static {}, Ll5/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->l(Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    .line 7
    iput-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->g:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->getDefaultResourceHeaderKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->h:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->i:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Token name cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/google/api/gax/rpc/ApiClientHeaderProvider;
    .locals 1

    new-instance v0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;-><init>(Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    .locals 1

    const-string v0, "gax"

    invoke-direct {p0, v0, p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    .locals 1

    const-string v0, "gl-java"

    invoke-direct {p0, v0, p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->f:Ljava/lang/String;

    return-object p0
.end method
