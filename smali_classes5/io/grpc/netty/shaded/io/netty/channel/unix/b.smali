.class public final Lio/grpc/netty/shaded/io/netty/channel/unix/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:J

.field public static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/LimitsStaticallyReferencedJniMethods;->iovMax()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->a:I

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/LimitsStaticallyReferencedJniMethods;->uioMaxIov()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->b:I

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/LimitsStaticallyReferencedJniMethods;->ssizeMax()J

    move-result-wide v0

    sput-wide v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->c:J

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/LimitsStaticallyReferencedJniMethods;->sizeOfjlong()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->d:I

    return-void
.end method
