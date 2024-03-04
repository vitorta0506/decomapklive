.class Lcom/google/common/collect/ConcurrentHashMultiset$c;
.super Lcom/google/common/collect/s3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s3<",
        "Lcom/google/common/collect/q6$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/q6$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->c:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/s3;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$c;->w0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$c;->y0()Lcom/google/common/collect/q6$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->a:Lcom/google/common/collect/q6$a;

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
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->c:Lcom/google/common/collect/ConcurrentHashMultiset;

    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->a:Lcom/google/common/collect/q6$a;

    invoke-interface {v2}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->a:Lcom/google/common/collect/q6$a;

    return-void
.end method

.method protected w0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public y0()Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/s3;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/q6$a;

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$c;->a:Lcom/google/common/collect/q6$a;

    return-object v0
.end method
