.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$b;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x60540c34872822f1L


# instance fields
.field private final error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

.field private final shutdownHint:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;)V
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v0, "error"

    .line 4
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    .line 5
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 1

    .line 6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 0

    .line 7
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p2, "error"

    .line 8
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    .line 9
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V
    .locals 2

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, p2, p4, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    const-string p2, "error"

    .line 15
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    .line 16
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;ZLio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 10
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "error"

    .line 12
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const-string p1, "shutdownHint"

    .line 13
    invoke-static {p4, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-void
.end method

.method public static varargs closedStreamError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static varargs headerListSizeError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;ZLjava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    .line 2
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;-><init>(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Z)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static isStreamError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)Z
    .locals 0

    instance-of p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;

    return p0
.end method

.method static newStatic(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;",
            "Ljava/lang/String;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$b;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 4
    :goto_0
    invoke-static {v0, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->f(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    return-object p0
.end method

.method public static varargs streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static varargs streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
    .locals 1

    if-nez p0, :cond_0

    .line 3
    invoke-static {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 4
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static streamId(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)I
    .locals 1

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->isStreamError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method

.method public shutdownHint()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-object v0
.end method
