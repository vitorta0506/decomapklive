.class public final Lcom/google/common/collect/ImmutableRangeMap$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/z5;->g()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/y6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/y6;->f()Lcom/google/common/collect/y6;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    new-instance v0, Lcom/google/common/collect/ImmutableList$b;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$b;-><init>(I)V

    .line 3
    new-instance v1, Lcom/google/common/collect/ImmutableList$b;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableList$b;-><init>(I)V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    if-lez v2, :cond_1

    .line 6
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Overlapping ranges: range "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " overlaps with entry "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    .line 10
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v2, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v2
.end method

.method b(Lcom/google/common/collect/ImmutableRangeMap$c;)Lcom/google/common/collect/ImmutableRangeMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableRangeMap$c<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public c(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/ImmutableRangeMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$c;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/common/collect/d6;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
