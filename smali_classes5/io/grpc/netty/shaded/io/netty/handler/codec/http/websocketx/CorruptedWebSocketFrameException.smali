.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/CorruptedFrameException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x365fba625ea3ffb2L


# instance fields
.field private final closeStatus:Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;->d()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->closeStatus:Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public closeStatus()Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/CorruptedWebSocketFrameException;->closeStatus:Lio/grpc/netty/shaded/io/netty/handler/codec/http/websocketx/a;

    return-object v0
.end method
