.class Lcom/google/common/collect/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a;->entrySetIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a$a;->c:Lcom/google/common/collect/a;

    iput-object p2, p0, Lcom/google/common/collect/a$a;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/a$a;->a:Ljava/util/Map$Entry;

    .line 2
    new-instance v1, Lcom/google/common/collect/a$b;

    iget-object v2, p0, Lcom/google/common/collect/a$a;->c:Lcom/google/common/collect/a;

    invoke-direct {v1, v2, v0}, Lcom/google/common/collect/a$b;-><init>(Lcom/google/common/collect/a;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/a$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a$a;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/a$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/a$a;->c:Lcom/google/common/collect/a;

    invoke-static {v1, v0}, Lcom/google/common/collect/a;->access$600(Lcom/google/common/collect/a;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/common/collect/a$a;->a:Ljava/util/Map$Entry;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
