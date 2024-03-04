.class Lig/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/a0;->d(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/r$a;

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lig/a0;


# direct methods
.method constructor <init>(Lig/a0;Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lig/a0$b;->c:Lig/a0;

    iput-object p2, p0, Lig/a0$b;->a:Lio/grpc/internal/r$a;

    iput-object p3, p0, Lig/a0$b;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lig/a0$b;->c:Lig/a0;

    invoke-static {v0, p1}, Lig/a0;->i(Lig/a0;Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lig/a0$b;->a:Lio/grpc/internal/r$a;

    iget-object v1, p0, Lig/a0$b;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lio/grpc/internal/v0;->g(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lig/a0$b;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
