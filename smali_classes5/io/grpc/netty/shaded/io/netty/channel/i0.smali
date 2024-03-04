.class final Lio/grpc/netty/shaded/io/netty/channel/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/x0;


# static fields
.field static final a:Lio/grpc/netty/shaded/io/netty/channel/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/i0;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/i0;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/i0;->a:Lio/grpc/netty/shaded/io/netty/channel/x0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/util/m;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/m;->get()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
