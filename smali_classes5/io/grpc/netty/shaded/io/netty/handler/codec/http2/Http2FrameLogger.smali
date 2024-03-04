.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;
.super Lio/grpc/netty/shaded/io/netty/channel/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;
    }
.end annotation


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private final c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->s(Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    move-result-object p1

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/l;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    .line 4
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method private M(Lkg/j;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;->TRACE:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v2

    invoke-static {p1, v2, v0}, Lkg/n;->w(Lkg/j;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1}, Lkg/n;->v(Lkg/j;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static s(Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;
    .locals 1

    const-string v0, "level"

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;->toInternalLevel()Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PING: ack=true bytes={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public F(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PRIORITY: streamId={} streamDependency={} weight={} exclusive={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public G(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    aput-object p5, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PUSH_PROMISE: streamId={} promisedStreamId={} headers={} padding={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public H(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} RST_STREAM: streamId={} errorCode={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public I(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const-string p1, "{} {} SETTINGS: ack=false settings={}"

    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public J(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} {} SETTINGS: ack=true"

    invoke-interface {v0, v1, v2, p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public K(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    and-int/lit16 p2, p3, 0xff

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-virtual {p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->o()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-virtual {p6}, Lkg/j;->P1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    invoke-direct {p0, p6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->M(Lkg/j;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} UNKNOWN: frameType={} streamId={} flags={} length={} bytes={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public L(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} WINDOW_UPDATE: streamId={} windowSizeIncrement={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isEnabled(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    return v0
.end method

.method public v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-virtual {p4}, Lkg/j;->P1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    invoke-direct {p0, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->M(Lkg/j;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} DATA: streamId={} padding={} endStream={} length={} bytes={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-virtual {p6}, Lkg/j;->P1()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-direct {p0, p6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->M(Lkg/j;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} GO_AWAY: lastStreamId={} errorCode={} length={} bytes={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x7

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/16 p1, 0x8

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} HEADERS: streamId={} headers={} streamDependency={} weight={} exclusive={} padding={} endStream={}"

    .line 5
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} HEADERS: streamId={} headers={} padding={} endStream={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public z(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "{} {} PING: ack=false bytes={}"

    .line 4
    invoke-interface {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
