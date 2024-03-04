.class final Lcom/google/common/collect/TreeRangeSet$g;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/q<",
        "Lcom/google/common/collect/g3<",
        "TC;>;",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "Lcom/google/common/collect/g3<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "Lcom/google/common/collect/g3<",
            "TC;>;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    .line 4
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    .line 5
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableMap;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    .line 6
    new-instance p1, Lcom/google/common/collect/TreeRangeSet$e;

    invoke-direct {p1, p3}, Lcom/google/common/collect/TreeRangeSet$e;-><init>(Ljava/util/NavigableMap;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->d:Ljava/util/NavigableMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeRangeSet$g;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/TreeRangeSet$g;)Lcom/google/common/collect/Range;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/collect/TreeRangeSet$g;)Lcom/google/common/collect/Range;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    return-object p0
.end method

.method private g(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "Lcom/google/common/collect/g3<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$g;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/common/collect/TreeRangeSet$g;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/p5;->i()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    .line 4
    invoke-static {v2}, Lcom/google/common/collect/g3;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/g3;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/y6;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/g3;

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/g3;->i()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/g3;

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/g3;->o()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/common/collect/TreeRangeSet$g$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeRangeSet$g$b;-><init>(Lcom/google/common/collect/TreeRangeSet$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/google/common/collect/g3<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->d(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/g3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    check-cast p1, Lcom/google/common/collect/g3;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/common/collect/g3;->f(Lcom/google/common/collect/g3;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/common/collect/g3;->f(Lcom/google/common/collect/g3;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/g3;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/d6;->A(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/g3;->f(Lcom/google/common/collect/g3;)I

    move-result v0

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public e(Lcom/google/common/collect/g3;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g3<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->g(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/p5;->i()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g3;->k(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/common/collect/p5;->i()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/g3;->k(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->d:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    .line 9
    invoke-virtual {v2}, Lcom/google/common/collect/g3;->i()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/g3;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    .line 10
    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 11
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    :goto_0
    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    .line 15
    invoke-static {v3}, Lcom/google/common/collect/g3;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/g3;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y6;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/g3;

    .line 16
    new-instance v2, Lcom/google/common/collect/TreeRangeSet$g$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/TreeRangeSet$g$a;-><init>(Lcom/google/common/collect/TreeRangeSet$g;Ljava/util/Iterator;Lcom/google/common/collect/g3;)V

    return-object v2
.end method

.method public f(Lcom/google/common/collect/g3;ZLcom/google/common/collect/g3;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g3<",
            "TC;>;Z",
            "Lcom/google/common/collect/g3<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    .line 2
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->g(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->d(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/common/collect/g3;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/g3<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/g3<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->g(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/g3;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$g;->e(Lcom/google/common/collect/g3;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$g;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/p5;->A(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/g3;

    check-cast p3, Lcom/google/common/collect/g3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$g;->f(Lcom/google/common/collect/g3;ZLcom/google/common/collect/g3;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    check-cast p1, Lcom/google/common/collect/g3;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$g;->h(Lcom/google/common/collect/g3;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
