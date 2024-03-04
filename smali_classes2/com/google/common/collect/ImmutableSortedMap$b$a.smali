.class Lcom/google/common/collect/ImmutableSortedMap$b$a;
.super Lcom/google/common/collect/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap$b;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f4<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSortedMap$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->a:Lcom/google/common/collect/ImmutableSortedMap$b;

    invoke-direct {p0}, Lcom/google/common/collect/f4;-><init>()V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->a:Lcom/google/common/collect/ImmutableSortedMap$b;

    return-object v0
.end method

.method public d(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->a:Lcom/google/common/collect/ImmutableSortedMap$b;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSortedMap$b;->a:Lcom/google/common/collect/ImmutableSortedMap;

    .line 2
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$200(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/o7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap$b$a;->a:Lcom/google/common/collect/ImmutableSortedMap$b;

    iget-object v2, v2, Lcom/google/common/collect/ImmutableSortedMap$b;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSortedMap;->access$300(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$b$a;->d(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f4;->size()I

    move-result v0

    new-instance v1, Lcom/google/common/collect/b5;

    invoke-direct {v1, p0}, Lcom/google/common/collect/b5;-><init>(Lcom/google/common/collect/ImmutableSortedMap$b$a;)V

    const/16 v2, 0x511

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/common/collect/s2;->c(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
