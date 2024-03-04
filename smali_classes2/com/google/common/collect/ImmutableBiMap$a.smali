.class public final Lcom/google/common/collect/ImmutableBiMap$a;
.super Lcom/google/common/collect/ImmutableMap$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$b<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->l()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->m()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->n()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic e(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->o(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableBiMap$a;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->q(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->r(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;->s(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$a;->n()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported for bimaps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lcom/google/common/collect/ImmutableBiMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    if-eqz v3, :cond_1

    .line 3
    iget-boolean v3, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    iget v3, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget-object v4, p0, Lcom/google/common/collect/ImmutableMap$b;->a:Ljava/util/Comparator;

    .line 6
    invoke-static {v4}, Lcom/google/common/collect/y6;->a(Ljava/util/Comparator;)Lcom/google/common/collect/y6;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/d6;->y()Lcom/google/common/base/h;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/y6;->g(Lcom/google/common/base/h;)Lcom/google/common/collect/y6;

    move-result-object v4

    .line 7
    invoke-static {v0, v1, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 8
    :cond_1
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableMap$b;->d:Z

    .line 9
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$b;->c:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lcom/google/common/collect/h7;->f(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$b;->b:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 12
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method o(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->e(Lcom/google/common/collect/ImmutableMap$b;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableBiMap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public q(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public r(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public s(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method
