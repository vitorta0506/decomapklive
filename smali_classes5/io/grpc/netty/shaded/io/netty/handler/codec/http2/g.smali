.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

.field private b:Z

.field private c:Z

.field private d:B

.field private e:I

.field private f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

.field private g:I

.field private h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

.field private i:I


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b:Z

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    const/16 p1, 0x4000

    .line 4
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->i:I

    return-void
.end method

.method private A(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    .line 2
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->v(Lkg/j;)I

    move-result v6

    .line 3
    invoke-direct {p0, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->V(I)V

    .line 4
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->g(Lkg/j;)I

    move-result v4

    .line 5
    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;ILio/grpc/netty/shaded/io/netty/channel/m;II)V

    iput-object v7, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    .line 6
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p3, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->k(II)I

    move-result p1

    .line 7
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v0

    invoke-virtual {p3, v0, p2, p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->L(Z)V

    return-void
.end method

.method private C(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->M1()J

    move-result-wide v0

    .line 2
    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    invoke-interface {p3, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V

    return-void
.end method

.method private F(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->g(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    div-int/lit8 v0, v0, 0x6

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    invoke-direct {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    invoke-virtual {p2}, Lkg/j;->O1()I

    move-result v4

    int-to-char v4, v4

    .line 6
    invoke-virtual {p2}, Lkg/j;->M1()J

    move-result-wide v5

    .line 7
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->K(CLjava/lang/Long;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x4

    if-ne v4, p2, :cond_1

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    invoke-interface {p3, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    :goto_1
    return-void
.end method

.method private I(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v5

    .line 2
    iget-byte v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->j(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V

    return-void
.end method

.method private K(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->g(Lkg/j;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    invoke-interface {p3, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "Received WINDOW_UPDATE with delta 0 for stream: %d"

    .line 5
    invoke-static {p1, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private L(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->j()V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-byte v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Frame of type %s must be associated with a stream."

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private N()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->M()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->b()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 4
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->h()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v1, "Frame length %d too small for padding."

    .line 7
    invoke-static {v0, v3, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 8
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    .line 9
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Continuation stream ID does not match pending headers. Expected %d, but received %d."

    .line 10
    invoke-static {v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 11
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v2, v2, [Ljava/lang/Object;

    iget-byte v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    .line 12
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Received %s frame but not currently processing headers."

    .line 13
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private P()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->M()V

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->h()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Frame length %d too small."

    .line 6
    invoke-static {v0, v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private R()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Frame length %d too small."

    invoke-static {v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 5
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A stream ID must be zero."

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private T()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->M()V

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->h()I

    move-result v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    if-lt v1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frame length too small."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private U()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-byte v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    .line 3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Received frame of type %s while processing headers on stream %d."

    .line 4
    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private V(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->k(II)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Frame payload too small for padding."

    invoke-static {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private W()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Frame length %d incorrect size for ping."

    .line 6
    invoke-static {v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 7
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A stream ID must be zero."

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private X()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->M()V

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Invalid frame length %d."

    .line 6
    invoke-static {v1, v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private Y()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 3
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    if-lt v1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "Frame length %d too small."

    .line 6
    invoke-static {v0, v2, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private Z()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->M()V

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Invalid frame length %d."

    invoke-static {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    return-object p0
.end method

.method private c0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Ack settings frame must have an empty payload."

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    rem-int/lit8 v2, v0, 0x6

    if-gtz v2, :cond_2

    return-void

    .line 6
    :cond_2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "Frame length %d invalid."

    invoke-static {v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 7
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A stream ID must be zero."

    invoke-static {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method private static d0(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    if-ltz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%s must be >= 0"

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0
.end method

.method private f0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    return-void
.end method

.method private g0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->U()V

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    const-string v1, "Stream ID"

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d0(ILjava/lang/String;)V

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Invalid frame length %d."

    invoke-static {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)I
    .locals 0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    return p0
.end method

.method static synthetic i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    return-object p1
.end method

.method private j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    :cond_0
    return-void
.end method

.method private static k(II)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method private o(Lkg/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkg/j;->N1()I

    move-result v0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    .line 3
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->i:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lkg/j;->x1()B

    move-result v0

    iput-byte v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {p1}, Lkg/j;->L1()S

    move-result v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>(S)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->g(Lkg/j;)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    .line 7
    iput-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b:Z

    .line 8
    iget-byte p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    packed-switch p1, :pswitch_data_0

    .line 9
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f0()V

    goto :goto_0

    .line 10
    :pswitch_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->N()V

    goto :goto_0

    .line 11
    :pswitch_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g0()V

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->R()V

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->W()V

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->Y()V

    goto :goto_0

    .line 15
    :pswitch_5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->c0()V

    goto :goto_0

    .line 16
    :pswitch_6
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->Z()V

    goto :goto_0

    .line 17
    :pswitch_7
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->X()V

    goto :goto_0

    .line 18
    :pswitch_8
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->T()V

    goto :goto_0

    .line 19
    :pswitch_9
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->P()V

    :goto_0
    return-void

    .line 20
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->i:I

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Frame length: %d exceeds maximum: %d"

    .line 22
    invoke-static {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->g:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b:Z

    .line 4
    iget-byte v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->d:B

    packed-switch v1, :pswitch_data_0

    .line 5
    invoke-direct {p0, p1, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->I(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-direct {p0, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->q(Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->K(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 8
    :pswitch_2
    invoke-static {p1, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->s(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p2}, Lkg/j;->G1()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->w(Lio/grpc/netty/shaded/io/netty/channel/m;JLio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 10
    :pswitch_4
    invoke-direct {p0, p1, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->A(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 11
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->F(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 12
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->C(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 13
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 14
    :pswitch_8
    invoke-direct {p0, p1, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->t(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    goto :goto_0

    .line 15
    :pswitch_9
    invoke-direct {p0, p1, p2, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->r(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 16
    :goto_0
    invoke-virtual {p2, v0}, Lkg/j;->R1(I)Lkg/j;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q(Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v1

    .line 2
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v2

    sub-int/2addr p2, v2

    .line 3
    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->L(Z)V

    return-void
.end method

.method private r(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->v(Lkg/j;)I

    move-result v4

    .line 2
    invoke-direct {p0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->V(I)V

    .line 3
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-static {p3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->k(II)I

    move-result p3

    .line 4
    invoke-virtual {p2, p3}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v3

    .line 5
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->f()Z

    move-result v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I

    return-void
.end method

.method private static s(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->g(Lkg/j;)I

    move-result v2

    .line 2
    invoke-virtual {p1}, Lkg/j;->M1()J

    move-result-wide v3

    .line 3
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v5

    move-object v0, p3

    move-object v1, p0

    .line 4
    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->m(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    return-void
.end method

.method private t(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    .line 1
    iget v2, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    .line 2
    iget-object v8, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 3
    invoke-direct {p0, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->v(Lkg/j;)I

    move-result v7

    .line 4
    invoke-direct {p0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->V(I)V

    .line 5
    iget-object v0, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual/range {p2 .. p2}, Lkg/j;->M1()J

    move-result-wide v0

    const-wide v3, 0x80000000L

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmp-long v14, v3, v5

    if-eqz v14, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-wide/32 v3, 0x7fffffff

    and-long/2addr v0, v3

    long-to-int v4, v0

    .line 7
    iget v0, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    if-eq v4, v0, :cond_1

    .line 8
    invoke-virtual/range {p2 .. p2}, Lkg/j;->L1()S

    move-result v0

    add-int/2addr v0, v12

    int-to-short v5, v0

    .line 9
    invoke-virtual/range {p2 .. p2}, Lkg/j;->Q1()I

    move-result v0

    sub-int v0, p3, v0

    invoke-static {v0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->k(II)I

    move-result v12

    .line 10
    new-instance v13, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;ILio/grpc/netty/shaded/io/netty/channel/m;ISZILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;)V

    iput-object v13, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    .line 11
    iget-object v0, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v0

    invoke-virtual {v13, v0, v10, v12, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 12
    iget-object v0, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->L(Z)V

    return-void

    .line 13
    :cond_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "A stream cannot depend on itself."

    invoke-static {v0, v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 14
    :cond_2
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$b;

    move-object v0, v6

    move-object v1, p0

    move-object/from16 v3, p1

    move v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;ILio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;)V

    iput-object v6, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    .line 15
    invoke-virtual/range {p2 .. p2}, Lkg/j;->Q1()I

    move-result v0

    sub-int v0, p3, v0

    invoke-static {v0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->k(II)I

    move-result v0

    .line 16
    iget-object v1, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;

    iget-object v2, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v2

    invoke-virtual {v1, v2, v10, v0, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 17
    iget-object v0, v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->L(Z)V

    return-void
.end method

.method private v(Lkg/j;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkg/j;->L1()S

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private w(Lio/grpc/netty/shaded/io/netty/channel/m;JLio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p4, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p4, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    :goto_0
    return-void
.end method

.method private y(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p2 .. p2}, Lkg/j;->M1()J

    move-result-wide v1

    const-wide v3, 0x80000000L

    and-long/2addr v3, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    long-to-int v13, v1

    .line 2
    iget v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    if-eq v13, v1, :cond_1

    .line 3
    invoke-virtual/range {p2 .. p2}, Lkg/j;->L1()S

    move-result v1

    add-int/2addr v1, v5

    int-to-short v14, v1

    .line 4
    iget v12, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V

    return-void

    .line 5
    :cond_1
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "A stream cannot depend on itself."

    invoke-static {v1, v2, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public T0(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result p1

    invoke-virtual {p2, p1}, Lkg/j;->l2(I)Lkg/j;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->o(Lkg/j;)V

    .line 5
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b:Z

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->p(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 7
    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->b:Z

    if-nez v1, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->c:Z

    .line 10
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 11
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->c:Z

    .line 12
    throw p1

    :catch_1
    move-exception p1

    .line 13
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->isStreamError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)Z

    move-result p2

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->c:Z

    .line 14
    throw p1
.end method

.method public a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;
    .locals 0

    return-object p0
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->j()V

    return-void
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;
    .locals 0

    return-object p0
.end method

.method public d(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->i:I

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->e:I

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Invalid MAX_FRAME_SIZE specified in sent settings: %d"

    .line 5
    invoke-static {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;->i:I

    return v0
.end method
