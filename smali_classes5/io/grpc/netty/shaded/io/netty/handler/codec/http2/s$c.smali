.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)V

    return-void
.end method


# virtual methods
.method public a(B)Z
    .locals 4

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->a:J

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)[B

    move-result-object v2

    and-int/lit16 p1, p1, 0xff

    aget-byte p1, v2, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method b()I
    .locals 4

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->a:J

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const/4 v2, 0x3

    shr-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$c;->a:J

    return-void
.end method
