.class Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iget-boolean v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->A()V

    :cond_0
    return-void
.end method
