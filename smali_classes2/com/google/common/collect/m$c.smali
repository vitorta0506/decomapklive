.class Lcom/google/common/collect/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lcom/google/common/collect/f3;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lcom/google/common/collect/f3;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field final synthetic e:Lcom/google/common/collect/m;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/m;->access$100(Lcom/google/common/collect/m;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/m$c;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/m$c;->c:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/m$c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/m$c;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/m$c;->b:Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/f3;

    invoke-virtual {v0}, Lcom/google/common/collect/f3;->c()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/m$c;->c:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/common/collect/m$c;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/m$c;->c:I

    .line 5
    iput-boolean v1, p0, Lcom/google/common/collect/m$c;->d:Z

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/m$c;->b:Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/m$c;->d:Z

    invoke-static {v0}, Lcom/google/common/collect/p2;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$c;->b:Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/f3;

    invoke-virtual {v0}, Lcom/google/common/collect/f3;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/m$c;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/f3;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/f3;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/m$c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/m$c;->e:Lcom/google/common/collect/m;

    invoke-static {v0}, Lcom/google/common/collect/m;->access$010(Lcom/google/common/collect/m;)J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/common/collect/m$c;->d:Z

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
