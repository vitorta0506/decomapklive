.class final Lio/grpc/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/l$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/internal/s;

.field private final b:Lio/grpc/b;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Lio/grpc/internal/s;Lio/grpc/b;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/s;

    iput-object p1, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/s;

    .line 3
    iput-object p2, p0, Lio/grpc/internal/l;->b:Lio/grpc/b;

    const-string p1, "appExecutor"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/l;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lio/grpc/internal/l;)Lio/grpc/b;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/l;->b:Lio/grpc/b;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/internal/l;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/l;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/s;

    invoke-interface {v0}, Lio/grpc/internal/s;->close()V

    return-void
.end method

.method public h1(Ljava/net/SocketAddress;Lio/grpc/internal/s$a;Lio/grpc/ChannelLogger;)Lio/grpc/internal/u;
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/internal/l$a;

    iget-object v1, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/s;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lio/grpc/internal/s;->h1(Ljava/net/SocketAddress;Lio/grpc/internal/s$a;Lio/grpc/ChannelLogger;)Lio/grpc/internal/u;

    move-result-object p1

    invoke-virtual {p2}, Lio/grpc/internal/s$a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/l$a;-><init>(Lio/grpc/internal/l;Lio/grpc/internal/u;Ljava/lang/String;)V

    return-object v0
.end method

.method public o0()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/l;->a:Lio/grpc/internal/s;

    invoke-interface {v0}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
