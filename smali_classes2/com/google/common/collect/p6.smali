.class public final synthetic Lcom/google/common/collect/p6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/collect/q6;Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/n6;

    invoke-direct {v0, p1}, Lcom/google/common/collect/n6;-><init>(Ljava/util/function/Consumer;)V

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Lcom/google/common/collect/q6;Ljava/util/function/ObjIntConsumer;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/q6;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/o6;

    invoke-direct {v0, p1}, Lcom/google/common/collect/o6;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static c(Lcom/google/common/collect/q6;)Ljava/util/Spliterator;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/t6;->o(Lcom/google/common/collect/q6;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/function/Consumer;Lcom/google/common/collect/q6$a;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic e(Ljava/util/function/ObjIntConsumer;Lcom/google/common/collect/q6$a;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->getCount()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method
