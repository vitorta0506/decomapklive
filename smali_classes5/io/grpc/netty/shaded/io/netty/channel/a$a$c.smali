.class Lio/grpc/netty/shaded/io/netty/channel/a$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->z(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/s;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->d:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->b:Lio/grpc/netty/shaded/io/netty/channel/s;

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->d:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->o0()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->d:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/a$a$c$a;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a$c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->d:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/a$a$c$a;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a$c;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;->d:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/a$a$c$a;

    invoke-direct {v2, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a$c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 6
    throw v0
.end method
