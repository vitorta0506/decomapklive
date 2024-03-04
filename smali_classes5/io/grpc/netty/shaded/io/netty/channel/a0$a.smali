.class Lio/grpc/netty/shaded/io/netty/channel/a0$a;
.super Lio/grpc/netty/shaded/io/netty/channel/a0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a0;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lio/grpc/netty/shaded/io/netty/channel/a0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/k;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$a;->d:Lio/grpc/netty/shaded/io/netty/channel/a0;

    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/k;)V

    return-void
.end method


# virtual methods
.method public v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$a;->d:Lio/grpc/netty/shaded/io/netty/channel/a0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a0;->s(Lio/grpc/netty/shaded/io/netty/channel/a0;)Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    move-result-object v0

    iget-boolean v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$a;->d:Lio/grpc/netty/shaded/io/netty/channel/a0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a0;->u(Lio/grpc/netty/shaded/io/netty/channel/a0;)Lio/grpc/netty/shaded/io/netty/channel/t;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0$a;->d:Lio/grpc/netty/shaded/io/netty/channel/a0;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a0;->s(Lio/grpc/netty/shaded/io/netty/channel/a0;)Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/k;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a0;->v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a0;->v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "An exception {}was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    .line 6
    invoke-interface {v1, v2, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a0;->v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a0;->v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    const-string v2, "An exception \'{}\' [enable DEBUG level for full stacktrace] was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    invoke-interface {v1, v2, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_2
    :goto_0
    return-object p0
.end method
