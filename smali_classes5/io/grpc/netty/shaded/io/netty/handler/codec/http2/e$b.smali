.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:J

.field private b:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->a:J

    return-void
.end method


# virtual methods
.method a(ZIIZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->b:J

    const-wide/16 v2, 0x0

    const/4 p3, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_4

    .line 2
    iget-wide v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->a:J

    const/4 v7, 0x2

    const-string v8, "Received amount of data %d does not match content-length header %d"

    cmp-long v9, v0, v5

    if-gtz v9, :cond_3

    if-eqz p4, :cond_2

    cmp-long p4, v0, v2

    if-nez p4, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    cmp-long p1, v5, v0

    if-gtz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p4, v7, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p4, p3

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p4, v4

    .line 5
    invoke-static {p2, p1, v8, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p4, v7, [Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p4, p3

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p4, v4

    .line 8
    invoke-static {p2, p1, v8, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 9
    :cond_4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p4, v4, [Ljava/lang/Object;

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;->a:J

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p4, p3

    const-string p3, "Received amount of data did overflow and so not match content-length header %d"

    .line 11
    invoke-static {p2, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method
