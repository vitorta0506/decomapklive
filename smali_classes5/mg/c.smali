.class public abstract Lmg/c;
.super Lmg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/c$b;
    }
.end annotation


# instance fields
.field B:Z


# direct methods
.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmg/b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Lmg/c;->b1()Lmg/b$b;

    move-result-object v0

    return-object v0
.end method

.method protected V0(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_2

    .line 4
    instance-of p1, p0, Lio/grpc/netty/shaded/io/netty/channel/z0;

    xor-int/2addr p1, v1

    return p1

    :cond_2
    return v1
.end method

.method protected X0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected Y0(Lio/grpc/netty/shaded/io/netty/channel/v0$c;)Z
    .locals 0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->g()Z

    move-result p1

    return p1
.end method

.method protected abstract Z0(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract a1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/s;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected b1()Lmg/b$b;
    .locals 2

    new-instance v0, Lmg/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmg/c$b;-><init>(Lmg/c;Lmg/c$a;)V

    return-object v0
.end method

.method protected g0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lmg/c;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lmg/b;->g0()V

    return-void
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->w0()I

    move-result v2

    :goto_0
    if-lez v2, :cond_4

    .line 4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 5
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/channel/f;->i()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_1
    if-ltz v5, :cond_2

    .line 6
    invoke-virtual {p0, v3, p1}, Lmg/c;->a1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/s;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 7
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {p0}, Lmg/c;->X0()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 9
    invoke-virtual {p1, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->y(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 10
    :cond_3
    throw v3

    .line 11
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->p()Z

    move-result p1

    if-eqz p1, :cond_5

    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_6

    and-int/lit8 p1, v1, -0x5

    .line 12
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_4

    :cond_5
    and-int/lit8 p1, v1, 0x4

    if-nez p1, :cond_6

    or-int/lit8 p1, v1, 0x4

    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_6
    :goto_4
    return-void
.end method
