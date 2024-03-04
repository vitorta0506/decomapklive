.class public Lio/grpc/netty/shaded/io/netty/channel/unix/g;
.super Lio/grpc/netty/shaded/io/netty/channel/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/channel/r<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final K:Lio/grpc/netty/shaded/io/netty/channel/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Lio/grpc/netty/shaded/io/netty/channel/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;

    const-string v1, "SO_REUSEPORT"

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/r;->e(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/r;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;->K:Lio/grpc/netty/shaded/io/netty/channel/r;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;

    const-string v1, "DOMAIN_SOCKET_READ_MODE"

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/r;->e(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/r;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/unix/g;->L:Lio/grpc/netty/shaded/io/netty/channel/r;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/r;-><init>(Ljava/lang/String;)V

    return-void
.end method
