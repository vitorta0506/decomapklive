.class Lcom/google/common/collect/n8$h$a;
.super Lcom/google/common/collect/n8$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n8$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n8<",
        "TR;TC;TV;>.i<",
        "Ljava/util/Map$Entry<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/n8$h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/n8$h;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/n8$h$a;->b:Lcom/google/common/collect/n8$h;

    iget-object p1, p1, Lcom/google/common/collect/n8$h;->d:Lcom/google/common/collect/n8;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/n8$i;-><init>(Lcom/google/common/collect/n8;Lcom/google/common/collect/n8$a;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/n8$h$a;->b:Lcom/google/common/collect/n8$h;

    iget-object v0, v0, Lcom/google/common/collect/n8$h;->d:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/c3;->c(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n8$h$a;->b:Lcom/google/common/collect/n8$h;

    iget-object v0, v0, Lcom/google/common/collect/n8$h;->d:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/n8$h$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/n8$h$a$a;-><init>(Lcom/google/common/collect/n8$h$a;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/collect/d6;->a(Ljava/util/Set;Lcom/google/common/base/h;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/n8$h$a;->b:Lcom/google/common/collect/n8$h;

    iget-object v0, v0, Lcom/google/common/collect/n8$h;->d:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/n8$h$a;->b:Lcom/google/common/collect/n8$h;

    iget-object v0, v0, Lcom/google/common/collect/n8$h;->d:Lcom/google/common/collect/n8;

    iget-object v0, v0, Lcom/google/common/collect/n8;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
