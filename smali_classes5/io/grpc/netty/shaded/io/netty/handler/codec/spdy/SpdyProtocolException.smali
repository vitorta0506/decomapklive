.class public Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException$b;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x6d37dbcac25aef60L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method static newStatic(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException$b;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException$b;-><init>(Ljava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->f(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/spdy/SpdyProtocolException;

    return-object p0
.end method
