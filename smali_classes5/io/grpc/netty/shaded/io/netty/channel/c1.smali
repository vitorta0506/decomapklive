.class final Lio/grpc/netty/shaded/io/netty/channel/c1;
.super Ljava/nio/channels/ClosedChannelException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1ebc92587e13a400L


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/netty/shaded/io/netty/channel/c1;"
        }
    .end annotation

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/c1;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/c1;-><init>()V

    invoke-static {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->f(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/c1;

    return-object p0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method
