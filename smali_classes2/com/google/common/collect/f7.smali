.class final Lcom/google/common/collect/f7;
.super Lcom/google/common/collect/ContiguousSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f7$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/ContiguousSet<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/l3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;",
            "Lcom/google/common/collect/l3<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/common/collect/ContiguousSet;-><init>(Lcom/google/common/collect/l3;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    return-void
.end method

.method static synthetic c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/f7;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-static {p1, v0}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/l3;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/google/common/collect/m3;

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-direct {p1, v0}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/l3;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/c3;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    iget-boolean v0, v0, Lcom/google/common/collect/l3;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/f7$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/f7$c;-><init>(Lcom/google/common/collect/f7;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/ImmutableSet$b;->createAsList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Lcom/google/common/collect/e9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/f7$b;

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->m()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/f7$b;-><init>(Lcom/google/common/collect/f7;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f7;->descendingIterator()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/f7;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/f7;

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    iget-object v3, v1, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->m()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/f7;->m()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g3;->l(Lcom/google/common/collect/l3;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/common/collect/w7;->e(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/f7;->g(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f7;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f7;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/l3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public intersection(Lcom/google/common/collect/ContiguousSet;)Lcom/google/common/collect/ContiguousSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    iget-object v1, p1, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 5
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->m()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/y6;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    .line 6
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 7
    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-static {p1, v0}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/l3;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/google/common/collect/m3;

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-direct {p1, v0}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/l3;)V

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/e9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/f7$a;

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/f7$a;-><init>(Lcom/google/common/collect/f7;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f7;->iterator()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->m()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g3;->j(Lcom/google/common/collect/l3;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public range()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-virtual {p0, v0, v0}, Lcom/google/common/collect/f7;->range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/g3;->p(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/l3;)Lcom/google/common/collect/g3;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    .line 4
    invoke-virtual {v0, p2, v1}, Lcom/google/common/collect/g3;->q(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/l3;)Lcom/google/common/collect/g3;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/g3;Lcom/google/common/collect/g3;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/f7;->m()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/l3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    return v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 3
    new-instance p1, Lcom/google/common/collect/m3;

    iget-object p2, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-direct {p1, p2}, Lcom/google/common/collect/m3;-><init>(Lcom/google/common/collect/l3;)V

    return-object p1

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    .line 5
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/common/collect/f7;->g(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/f7;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/f7;->g(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/f7;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/common/collect/f7$d;

    iget-object v1, p0, Lcom/google/common/collect/f7;->a:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/f7$d;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/l3;Lcom/google/common/collect/f7$a;)V

    return-object v0
.end method
