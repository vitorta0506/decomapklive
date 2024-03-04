.class Lio/grpc/netty/shaded/io/netty/channel/epoll/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/epoll/h;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/h;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h$a;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->b1(Lio/grpc/netty/shaded/io/netty/channel/epoll/h;)I

    move-result v0

    return v0
.end method
