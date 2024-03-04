.class final Ljg/f$b;
.super Lio/grpc/netty/shaded/io/netty/channel/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Ljg/f;


# direct methods
.method private constructor <init>(Ljg/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljg/f$b;->f:Ljg/f;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V

    return-void
.end method

.method synthetic constructor <init>(Ljg/f;Ljg/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljg/f$b;-><init>(Ljg/f;)V

    return-void
.end method


# virtual methods
.method public Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method
