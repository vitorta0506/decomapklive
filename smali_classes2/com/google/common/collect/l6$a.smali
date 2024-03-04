.class final Lcom/google/common/collect/l6$a;
.super Lcom/google/common/collect/d6$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/l6$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d6$n<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/common/collect/i6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i6<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/i6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i6<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/d6$n;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/i6;

    iput-object p1, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    return-void
.end method

.method static synthetic d(Lcom/google/common/collect/l6$a;)Lcom/google/common/collect/i6;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/l6$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l6$a$a;-><init>(Lcom/google/common/collect/l6$a;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0, p1}, Lcom/google/common/collect/i6;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l6$a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0, p1}, Lcom/google/common/collect/i6;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l6$a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0, p1}, Lcom/google/common/collect/i6;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method g(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l6$a;->e(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l6$a;->f(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$a;->d:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
