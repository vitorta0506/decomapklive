.class final Leh/k1$d;
.super Lio/grpc/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/g<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/grpc/Status;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Lio/grpc/r;

.field final synthetic d:Leh/k1;


# direct methods
.method constructor <init>(Leh/k1;Lio/grpc/Status;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/k1$d;->d:Leh/k1;

    invoke-direct {p0}, Lio/grpc/g;-><init>()V

    .line 2
    iput-object p2, p0, Leh/k1$d;->a:Lio/grpc/Status;

    .line 3
    iput-object p3, p0, Leh/k1$d;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {}, Lio/grpc/r;->j()Lio/grpc/r;

    move-result-object p1

    iput-object p1, p0, Leh/k1$d;->c:Lio/grpc/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    return-void
.end method

.method public e(Lio/grpc/g$a;Lio/grpc/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/s0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Leh/k1$d;->d:Leh/k1;

    invoke-static {p2}, Leh/k1;->e(Leh/k1;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 2
    iget-object p2, p0, Leh/k1$d;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Leh/k1$d$a;

    invoke-direct {v0, p0, p1}, Leh/k1$d$a;-><init>(Leh/k1$d;Lio/grpc/g$a;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
