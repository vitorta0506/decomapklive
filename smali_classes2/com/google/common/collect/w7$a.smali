.class Lcom/google/common/collect/w7$a;
.super Lcom/google/common/collect/w7$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/w7;->q(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/w7$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/w7$g<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/common/collect/w7$a;->b:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/collect/w7$g;-><init>(Lcom/google/common/collect/w7$a;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/w7$a;->f(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic f(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/w7$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public d()Lcom/google/common/collect/e9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/w7$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/w7$a$a;-><init>(Lcom/google/common/collect/w7$a;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/w7$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/w7$a;->d()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/w7$a;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/w7$a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/w7$a;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/w7$a;->a:Ljava/util/Set;

    new-instance v3, Lcom/google/common/collect/v7;

    invoke-direct {v3, v2}, Lcom/google/common/collect/v7;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
