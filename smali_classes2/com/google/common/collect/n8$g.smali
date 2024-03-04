.class Lcom/google/common/collect/n8$g;
.super Lcom/google/common/collect/d6$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$i<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/n8;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n8;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/n8$g;->c:Lcom/google/common/collect/n8;

    invoke-direct {p0}, Lcom/google/common/collect/d6$i;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n8$g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n8$g;->c:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/n8$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->c:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/n8$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/n8$g;->c:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/n8$g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->b()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->s(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n8$g$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/n8$g$b;-><init>(Lcom/google/common/collect/n8$g;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/p5;->k()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/common/collect/n8$g$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/n8$g$a;-><init>(Lcom/google/common/collect/n8$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/o8;

    invoke-direct {v1, p0}, Lcom/google/common/collect/o8;-><init>(Lcom/google/common/collect/n8$g;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/s2;->e(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->t(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->c:Lcom/google/common/collect/n8;

    iget-object v1, p0, Lcom/google/common/collect/n8$g;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/n8;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->u(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->b()V

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/n8$g;->c()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n8$g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method
