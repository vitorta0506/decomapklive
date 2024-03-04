.class final Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

.field private final b:Z

.field private c:I

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->h1(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v2

    const-wide/16 v3, -0x1

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->d()I

    move-result v5

    const-wide/16 v6, -0x1

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->c:I

    int-to-long v8, v1

    invoke-static/range {v2 .. v9}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->m(IJIJJ)I

    move-result v1

    .line 2
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->c:I

    sub-int/2addr v2, v1

    iput v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->c:I

    if-nez v2, :cond_1

    .line 3
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->b:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->d:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    .line 5
    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->b:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->d:Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->L(Z)Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    .line 7
    :cond_2
    throw v1
.end method
