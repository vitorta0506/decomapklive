.class public final Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;
.super Lio/grpc/netty/shaded/io/netty/handler/timeout/TimeoutException;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;

.field private static final serialVersionUID:J = -0x20262b24167bf01L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;-><init>()V

    :goto_0
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;->INSTANCE:Lio/grpc/netty/shaded/io/netty/handler/timeout/WriteTimeoutException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/timeout/TimeoutException;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/timeout/TimeoutException;-><init>(Z)V

    return-void
.end method
