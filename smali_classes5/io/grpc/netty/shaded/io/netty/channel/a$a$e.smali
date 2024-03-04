.class Lio/grpc/netty/shaded/io/netty/channel/a$a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a;->k(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/s;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Z

.field final synthetic e:Ljava/nio/channels/ClosedChannelException;

.field final synthetic f:Z

.field final synthetic g:Lio/grpc/netty/shaded/io/netty/channel/a$a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;ZLjava/nio/channels/ClosedChannelException;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->g:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->b:Lio/grpc/netty/shaded/io/netty/channel/s;

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->c:Ljava/lang/Throwable;

    iput-boolean p5, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->d:Z

    iput-object p6, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->e:Ljava/nio/channels/ClosedChannelException;

    iput-boolean p7, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->g:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->d(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->g:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a$e;)V

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->f(Lio/grpc/netty/shaded/io/netty/channel/a$a;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->g:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;

    invoke-direct {v2, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a$e;)V

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->f(Lio/grpc/netty/shaded/io/netty/channel/a$a;Ljava/lang/Runnable;)V

    .line 3
    throw v0
.end method
