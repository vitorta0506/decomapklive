.class public final Lio/grpc/netty/shaded/io/netty/channel/z;
.super Lio/grpc/netty/shaded/io/netty/channel/c;
.source "SourceFile"


# instance fields
.field private final e:Lio/grpc/netty/shaded/io/netty/channel/e;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/z;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;I)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/z;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;IZ)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    move-object p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p3, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;I)V

    const-string p2, "channel"

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/e;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/z;->e:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-void
.end method


# virtual methods
.method protected f(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;
    .locals 1

    .line 1
    instance-of v0, p2, Lkg/o;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkg/o;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, p1, p3}, Lkg/o;->I3(ZLkg/j;)Lkg/o;

    return-object p2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/c;->h(Lkg/k;Lkg/j;Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected r()Lkg/j;
    .locals 1

    sget-object v0, Lkg/s0;->d:Lkg/j;

    return-object v0
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/z;->e:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c;->p(Lio/grpc/netty/shaded/io/netty/channel/v;Ljava/lang/Throwable;)V

    return-void
.end method

.method public x(ILio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/z;->e:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->P()Lkg/k;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c;->q(Lkg/k;ILio/grpc/netty/shaded/io/netty/channel/y;)Lkg/j;

    move-result-object p1

    return-object p1
.end method
