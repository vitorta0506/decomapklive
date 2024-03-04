.class Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iget-object v1, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->A:Z

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->F()V

    return-void
.end method
