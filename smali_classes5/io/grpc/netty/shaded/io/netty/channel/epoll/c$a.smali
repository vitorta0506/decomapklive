.class Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->r()V

    return-void
.end method
