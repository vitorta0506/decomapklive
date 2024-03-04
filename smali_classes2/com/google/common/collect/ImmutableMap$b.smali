.class public Lcom/google/common/collect/ImmutableMap$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field

.field b:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    .line 5
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    return-void
.end method

.method private b(Z)Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 2
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    if-nez v3, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v3, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    iput-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    if-nez p1, :cond_2

    .line 7
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    invoke-static {v3, v0}, Lcom/google/common/collect/ImmutableMap$b;->g([Ljava/util/Map$Entry;I)[Ljava/util/Map$Entry;

    move-result-object v0

    .line 8
    array-length v3, v0

    move v6, v3

    move-object v3, v0

    move v0, v6

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    .line 10
    invoke-static {v4}, Lcom/google/common/collect/y6;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y6;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/d6;->y()Lcom/google/common/base/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/y6;->g(Lcom/google/common/base/h;)Lcom/google/common/collect/y6;

    move-result-object v4

    .line 11
    invoke-static {v3, v1, v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move-object v1, v3

    .line 12
    :goto_0
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/common/collect/k7;->c(I[Ljava/util/Map$Entry;Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method private f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$a;->e(II)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    :cond_0
    return-void
.end method

.method private static g([Ljava/util/Map$Entry;I)[Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    add-int/lit8 v2, p1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 3
    aget-object v3, p0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    sub-int v0, p1, v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 8
    aget-object v5, p0, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->b(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->b(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method e(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget v1, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->f(I)V

    .line 3
    iget-object v0, p1, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget v3, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget p1, p1, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    return-object p0
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->f(I)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    aput-object p1, p2, v0

    return-object p0
.end method

.method public i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->f(I)V

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$b;->i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object p1

    return-object p1
.end method
