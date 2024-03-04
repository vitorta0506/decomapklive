.class Lcom/google/common/collect/l6$e;
.super Lcom/google/common/collect/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/i6;
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
    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    return-void
.end method

.method public static synthetic c(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/l6$e;->d(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V

    return-void
.end method

.method private static synthetic d(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0, p1}, Lcom/google/common/collect/i6;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->t(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method distinctElements()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TK;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l6$e$a;

    iget-object v1, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    .line 2
    invoke-interface {v1}, Lcom/google/common/collect/i6;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/l6$e$a;-><init>(Lcom/google/common/collect/l6$e;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->entries()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/m6;

    invoke-direct {v1, p1}, Lcom/google/common/collect/m6;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/d6;->j(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2

    const-string v0, "occurrences"

    .line 1
    invoke-static {p2, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l6$e;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->t(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    goto :goto_1

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    if-ge v0, p2, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l6$e;->a:Lcom/google/common/collect/i6;

    invoke-interface {v0}, Lcom/google/common/collect/i6;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/l4;->a:Lcom/google/common/collect/l4;

    invoke-static {v0, v1}, Lcom/google/common/collect/s2;->e(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
