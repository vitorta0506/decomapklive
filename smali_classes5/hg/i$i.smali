.class final Lhg/i$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhg/i$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final a:Lio/grpc/d1;

.field private final b:Lio/grpc/n0$h;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/grpc/n0$h;Lio/grpc/d1;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lhg/i$i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "subchannel"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$h;

    iput-object p1, p0, Lhg/i$i;->b:Lio/grpc/n0$h;

    const-string p1, "syncContext"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Lhg/i$i;->a:Lio/grpc/d1;

    return-void
.end method

.method static synthetic b(Lhg/i$i;)Lio/grpc/n0$h;
    .locals 0

    iget-object p0, p0, Lhg/i$i;->b:Lio/grpc/n0$h;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/s0;)Lio/grpc/n0$e;
    .locals 2

    .line 1
    iget-object p1, p0, Lhg/i$i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lhg/i$i;->a:Lio/grpc/d1;

    new-instance v0, Lhg/i$i$a;

    invoke-direct {v0, p0}, Lhg/i$i$a;-><init>(Lhg/i$i;)V

    invoke-virtual {p1, v0}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/n0$e;->g()Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lhg/i$i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lhg/i$i;

    .line 3
    iget-object v0, p0, Lhg/i$i;->b:Lio/grpc/n0$h;

    iget-object v2, p1, Lhg/i$i;->b:Lio/grpc/n0$h;

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhg/i$i;->a:Lio/grpc/d1;

    iget-object p1, p1, Lhg/i$i;->a:Lio/grpc/d1;

    .line 4
    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lhg/i$i;->b:Lio/grpc/n0$h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lhg/i$i;->a:Lio/grpc/d1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(idle)["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhg/i$i;->b:Lio/grpc/n0$h;

    invoke-virtual {v1}, Lio/grpc/n0$h;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
