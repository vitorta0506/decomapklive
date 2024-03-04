.class final Lio/grpc/netty/shaded/io/netty/channel/epoll/c$b;
.super Lio/grpc/netty/shaded/io/netty/channel/unix/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    .line 2
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/e;-><init>(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected a()Lkg/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->P()Lkg/k;

    move-result-object v0

    return-object v0
.end method
