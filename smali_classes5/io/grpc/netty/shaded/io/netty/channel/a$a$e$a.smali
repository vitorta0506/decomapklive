.class Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/a$a$e;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a$a$e;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;->a:Lio/grpc/netty/shaded/io/netty/channel/a$a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;->a:Lio/grpc/netty/shaded/io/netty/channel/a$a$e;

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->b:Lio/grpc/netty/shaded/io/netty/channel/s;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->c:Ljava/lang/Throwable;

    iget-boolean v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->d:Z

    invoke-virtual {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->k(Ljava/lang/Throwable;Z)V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;->a:Lio/grpc/netty/shaded/io/netty/channel/a$a$e;

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->b:Lio/grpc/netty/shaded/io/netty/channel/s;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->e:Ljava/nio/channels/ClosedChannelException;

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->f(Ljava/nio/channels/ClosedChannelException;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e$a;->a:Lio/grpc/netty/shaded/io/netty/channel/a$a$e;

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->g:Lio/grpc/netty/shaded/io/netty/channel/a$a;

    iget-boolean v0, v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;->f:Z

    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e(Lio/grpc/netty/shaded/io/netty/channel/a$a;Z)V

    return-void
.end method
