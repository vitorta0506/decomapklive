.class abstract Lcom/google/common/collect/t6$d;
.super Lcom/google/common/collect/w7$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w7$f<",
        "Lcom/google/common/collect/q6$a<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/w7$f;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/t6$d;->m()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/q6$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/common/collect/q6$a;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/t6$d;->m()Lcom/google/common/collect/q6;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/q6;->count(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract m()Lcom/google/common/collect/q6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/q6$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/q6$a;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/t6$d;->m()Lcom/google/common/collect/q6;

    move-result-object v2

    .line 6
    invoke-interface {v2, v0, p1, v1}, Lcom/google/common/collect/q6;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
