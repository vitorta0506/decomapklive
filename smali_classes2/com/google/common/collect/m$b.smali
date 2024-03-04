.class Lcom/google/common/collect/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/m;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/q6$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TE;",
            "Lcom/google/common/collect/f3;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/m;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/m$b;->c:Lcom/google/common/collect/m;

    iput-object p2, p0, Lcom/google/common/collect/m$b;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/q6$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/m$b;->a:Ljava/util/Map$Entry;

    .line 3
    new-instance v1, Lcom/google/common/collect/m$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/m$b$a;-><init>(Lcom/google/common/collect/m$b;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/m$b;->a()Lcom/google/common/collect/q6$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/m$b;->c:Lcom/google/common/collect/m;

    iget-object v2, p0, Lcom/google/common/collect/m$b;->a:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/f3;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/f3;->d(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/m;->access$022(Lcom/google/common/collect/m;J)J

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/m$b;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/m$b;->a:Ljava/util/Map$Entry;

    return-void
.end method
