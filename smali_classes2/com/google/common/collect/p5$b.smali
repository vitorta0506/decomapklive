.class Lcom/google/common/collect/p5$b;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/p5;->l(Ljava/util/Iterator;Lcom/google/common/base/q;)Lcom/google/common/collect/e9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/base/q;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/p5$b;->c:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/google/common/collect/p5$b;->d:Lcom/google/common/base/q;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/p5$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p5$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/p5$b;->d:Lcom/google/common/base/q;

    invoke-interface {v1, v0}, Lcom/google/common/base/q;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
