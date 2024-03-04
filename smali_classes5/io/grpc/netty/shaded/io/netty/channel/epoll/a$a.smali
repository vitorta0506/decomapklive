.class Lio/grpc/netty/shaded/io/netty/channel/epoll/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->i0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :goto_0
    return-void
.end method
