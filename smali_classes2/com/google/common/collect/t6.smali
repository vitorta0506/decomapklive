.class public final Lcom/google/common/collect/t6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/t6$f;,
        Lcom/google/common/collect/t6$d;,
        Lcom/google/common/collect/t6$c;,
        Lcom/google/common/collect/t6$b;,
        Lcom/google/common/collect/t6$e;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/google/common/collect/q6$a;)Ljava/util/Spliterator;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/t6;->j(Lcom/google/common/collect/q6$a;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/common/collect/q6;Lcom/google/common/collect/q6;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/q6<",
            "TE;>;",
            "Lcom/google/common/collect/q6<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/s6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s6;-><init>(Lcom/google/common/collect/q6;)V

    invoke-interface {p1, v0}, Lcom/google/common/collect/q6;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method static c(Lcom/google/common/collect/q6;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/q6<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lcom/google/common/collect/q6;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/common/collect/t6;->d(Ljava/lang/Iterable;)Lcom/google/common/collect/q6;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/t6;->b(Lcom/google/common/collect/q6;Lcom/google/common/collect/q6;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/p5;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Iterable;)Lcom/google/common/collect/q6;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/q6<",
            "TT;>;"
        }
    .end annotation

    check-cast p0, Lcom/google/common/collect/q6;

    return-object p0
.end method

.method static e(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t6$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t6$a;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static f(Lcom/google/common/collect/q6;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q6<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/q6;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Lcom/google/common/collect/q6;

    .line 3
    invoke-interface {p0}, Lcom/google/common/collect/q6;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/q6;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/q6$a;

    .line 5
    invoke-interface {v1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/q6;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static g(Ljava/lang/Object;I)Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t6$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/t6$e;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static h(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/q6;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/q6;

    invoke-interface {p0}, Lcom/google/common/collect/q6;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method static i(Lcom/google/common/collect/q6;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/q6<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/t6$f;

    invoke-interface {p0}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/t6$f;-><init>(Lcom/google/common/collect/q6;Ljava/util/Iterator;)V

    return-object v0
.end method

.method private static synthetic j(Lcom/google/common/collect/q6$a;)Ljava/util/Spliterator;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static k(Lcom/google/common/collect/q6;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q6<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/q6;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/q6;

    invoke-interface {p1}, Lcom/google/common/collect/q6;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/q6;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static l(Lcom/google/common/collect/q6;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q6<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/google/common/collect/q6;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/common/collect/q6;

    invoke-interface {p1}, Lcom/google/common/collect/q6;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/q6;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static m(Lcom/google/common/collect/q6;Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/q6<",
            "TE;>;TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    .line 2
    invoke-interface {p0, p1}, Lcom/google/common/collect/q6;->count(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/q6;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    .line 4
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/q6;->remove(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return v0
.end method

.method static n(Lcom/google/common/collect/q6;Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/q6<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    const-string v0, "newCount"

    .line 2
    invoke-static {p3, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    .line 3
    invoke-interface {p0, p1}, Lcom/google/common/collect/q6;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/q6;->setCount(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static o(Lcom/google/common/collect/q6;)Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/q6<",
            "TE;>;)",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/common/collect/r6;->a:Lcom/google/common/collect/r6;

    .line 3
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit16 v2, v2, 0x510

    or-int/lit8 v2, v2, 0x40

    .line 4
    invoke-interface {p0}, Lcom/google/common/collect/q6;->size()I

    move-result p0

    int-to-long v3, p0

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/s2;->b(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
