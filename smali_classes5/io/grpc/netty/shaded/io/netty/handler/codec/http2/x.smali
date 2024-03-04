.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/CharSequence;

.field public static final b:Ljava/lang/CharSequence;

.field public static final c:Ljava/lang/CharSequence;

.field private static final d:Lkg/j;

.field public static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "HTTP2-Settings"

    .line 1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->a:Ljava/lang/CharSequence;

    const-string v0, "h2c"

    .line 2
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->b:Ljava/lang/CharSequence;

    const-string v0, "h2"

    .line 3
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->c:Ljava/lang/CharSequence;

    const/16 v0, 0x18

    .line 4
    invoke-static {v0}, Lkg/s0;->g(I)Lkg/j;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    const-string v2, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lkg/j;->A2([B)Lkg/j;

    move-result-object v0

    invoke-static {v0}, Lkg/s0;->i(Lkg/j;)Lkg/j;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lkg/j;->B()Lkg/j;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->d:Lkg/j;

    .line 6
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->e:J

    return-void
.end method

.method public static a(J)J
    .locals 2

    const/4 v0, 0x2

    ushr-long v0, p0, v0

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static b()Lkg/j;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->d:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->V1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(IJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "Header size exceeded max allowed size (%d)"

    .line 3
    invoke-static {p0, v0, p3, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->headerListSizeError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;ZLjava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0
.end method

.method public static e(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    const-string p0, "Header size exceeded max allowed size (%d)"

    .line 3
    invoke-static {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    throw p0
.end method

.method public static f(I)Z
    .locals 1

    const/16 v0, 0x4000

    if-lt p0, v0, :cond_0

    const v0, 0xffffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lkg/j;)I
    .locals 1

    invoke-virtual {p0}, Lkg/j;->E1()I

    move-result p0

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;)I
    .locals 4

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;->a()J

    move-result-wide v0

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$a;->b()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static i(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)Lkg/j;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkg/n;->f0(Lkg/k;Ljava/lang/CharSequence;)Lkg/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lkg/s0;->d:Lkg/j;

    return-object p0
.end method

.method public static j(I)V
    .locals 4

    const/16 v0, 0x100

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    const-string p0, "Invalid padding \'%d\'. Padding must be between 0 and %d (inclusive)."

    .line 3
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg/j;->H2(I)Lkg/j;

    .line 2
    invoke-virtual {p0, p2}, Lkg/j;->u2(I)Lkg/j;

    .line 3
    invoke-virtual {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->o()S

    move-result p1

    invoke-virtual {p0, p1}, Lkg/j;->u2(I)Lkg/j;

    .line 4
    invoke-virtual {p0, p4}, Lkg/j;->E2(I)Lkg/j;

    return-void
.end method
