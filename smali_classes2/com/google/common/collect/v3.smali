.class public abstract Lcom/google/common/collect/v3;
.super Lcom/google/common/collect/q3;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/q6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q3<",
        "TE;>;",
        "Lcom/google/common/collect/q6<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/q3;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/q6;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/q6;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/q6;->equals(Ljava/lang/Object;)Z

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

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/p6;->a(Lcom/google/common/collect/q6;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/p6;->b(Lcom/google/common/collect/q6;Ljava/util/function/ObjIntConsumer;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/q6;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/q6;->remove(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/q6;->setCount(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/v3;->w0()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/q6;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/p6;->c(Lcom/google/common/collect/q6;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method protected standardAddAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/t6;->c(Lcom/google/common/collect/q6;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected standardClear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/p5;->e(Ljava/util/Iterator;)V

    return-void
.end method

.method protected standardContains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v3;->count(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected standardRemove(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/v3;->remove(Ljava/lang/Object;I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected standardRemoveAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/t6;->k(Lcom/google/common/collect/q6;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected standardRetainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/t6;->l(Lcom/google/common/collect/q6;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected standardToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/v3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract w0()Lcom/google/common/collect/q6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6<",
            "TE;>;"
        }
    .end annotation
.end method
