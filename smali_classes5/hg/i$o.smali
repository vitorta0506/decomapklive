.class final Lhg/i$o;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhg/i$f;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lhg/i$n;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhg/i$f;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lhg/i$n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    const-string v0, "dropList"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lhg/i$o;->a:Ljava/util/List;

    const-string p1, "pickList"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lhg/i$o;->c:Ljava/util/List;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "pickList is empty"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 5

    .line 1
    iget-object v0, p0, Lhg/i$o;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lhg/i$o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lhg/i$o;->a:Ljava/util/List;

    iget v3, p0, Lhg/i$o;->b:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhg/i$f;

    .line 4
    iget v3, p0, Lhg/i$o;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lhg/i$o;->b:I

    .line 5
    iget-object v4, p0, Lhg/i$o;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 6
    iput v2, p0, Lhg/i$o;->b:I

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lhg/i$f;->a()Lio/grpc/n0$e;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_1
    iget-object v1, p0, Lhg/i$o;->c:Ljava/util/List;

    iget v3, p0, Lhg/i$o;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhg/i$n;

    .line 9
    iget v3, p0, Lhg/i$o;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lhg/i$o;->d:I

    .line 10
    iget-object v4, p0, Lhg/i$o;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 11
    iput v2, p0, Lhg/i$o;->d:I

    .line 12
    :cond_2
    invoke-virtual {p1}, Lio/grpc/n0$f;->b()Lio/grpc/s0;

    move-result-object p1

    invoke-interface {v1, p1}, Lhg/i$n;->a(Lio/grpc/s0;)Lio/grpc/n0$e;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lhg/i$o;

    sget-boolean v1, Lhg/i;->B:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/common/base/j;->b(Ljava/lang/Class;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lhg/i$o;->a:Ljava/util/List;

    const-string v2, "dropList"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lhg/i$o;->c:Ljava/util/List;

    const-string v2, "pickList"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/j;->b(Ljava/lang/Class;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
