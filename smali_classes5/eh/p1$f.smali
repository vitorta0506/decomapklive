.class final Leh/p1$f;
.super Leh/p1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Leh/j2;


# direct methods
.method constructor <init>(Ljava/util/List;ILeh/j2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/n0$h;",
            ">;I",
            "Leh/j2;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Leh/p1$d;-><init>(Leh/p1$a;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Leh/p1$f;->a:Ljava/util/List;

    .line 4
    iput p2, p0, Leh/p1$f;->b:I

    const-string p1, "random"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j2;

    iput-object p1, p0, Leh/p1$f;->c:Leh/j2;

    return-void
.end method

.method private c()Lio/grpc/n0$h;
    .locals 5

    .line 1
    iget-object v0, p0, Leh/p1$f;->a:Ljava/util/List;

    iget-object v1, p0, Leh/p1$f;->c:Leh/j2;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Leh/j2;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Leh/p1$f;->b:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Leh/p1$f;->a:Ljava/util/List;

    iget-object v3, p0, Leh/p1$f;->c:Leh/j2;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Leh/j2;->b(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/n0$h;

    .line 4
    invoke-static {v2}, Leh/p1;->g(Lio/grpc/n0$h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v0}, Leh/p1;->g(Lio/grpc/n0$h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 3

    .line 1
    invoke-direct {p0}, Leh/p1$f;->c()Lio/grpc/n0$h;

    move-result-object p1

    .line 2
    new-instance v0, Leh/p1$e;

    .line 3
    invoke-static {p1}, Leh/p1;->g(Lio/grpc/n0$h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/p1$e;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Leh/p1$a;)V

    .line 4
    invoke-static {p1, v0}, Lio/grpc/n0$e;->i(Lio/grpc/n0$h;Lio/grpc/k$a;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method

.method b(Leh/p1$d;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Leh/p1$f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Leh/p1$f;

    if-eq p1, p0, :cond_1

    .line 3
    iget-object v0, p0, Leh/p1$f;->a:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Leh/p1$f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Leh/p1$f;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v2, p1, Leh/p1$f;->a:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Leh/p1$f;->b:I

    iget p1, p1, Leh/p1$f;->b:I

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Leh/p1$f;

    invoke-static {v0}, Lcom/google/common/base/j;->b(Ljava/lang/Class;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p1$f;->a:Ljava/util/List;

    const-string v2, "list"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Leh/p1$f;->b:I

    const-string v2, "choiceCount"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
