.class Lio/grpc/netty/shaded/io/netty/channel/epoll/j;
.super Lio/grpc/netty/shaded/io/netty/channel/v0$a;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/v0$b;


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/channel/unix/d;

.field private final c:Lio/grpc/netty/shaded/io/netty/util/w;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/v0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/v0$c;)V

    .line 2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/unix/d;

    invoke-direct {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/d;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->b:Lio/grpc/netty/shaded/io/netty/channel/unix/d;

    .line 3
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/j$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/j;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->c:Lio/grpc/netty/shaded/io/netty/util/w;

    return-void
.end method


# virtual methods
.method public final a(Lkg/k;)Lkg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->b:Lio/grpc/netty/shaded/io/netty/channel/unix/d;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/d;->n(Lkg/k;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->l()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->b:Lio/grpc/netty/shaded/io/netty/channel/unix/d;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->a(Lkg/k;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lio/grpc/netty/shaded/io/netty/util/w;)Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->l()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/v0$b;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$b;->f(Lio/grpc/netty/shaded/io/netty/util/w;)Z

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->c:Lio/grpc/netty/shaded/io/netty/util/w;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->f(Lio/grpc/netty/shaded/io/netty/util/w;)Z

    move-result v0

    return v0
.end method

.method final m(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->d:Z

    return-void
.end method

.method final n()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->e:Z

    return v0
.end method

.method o()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->d:Z

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->j()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->e:Z

    return-void
.end method
