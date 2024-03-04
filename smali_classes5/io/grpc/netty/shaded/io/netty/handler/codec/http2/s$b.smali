.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;
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
    name = "b"
.end annotation


# instance fields
.field a:Lkg/j;

.field private b:J

.field private c:I

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)V

    return-void
.end method


# virtual methods
.method public a(B)Z
    .locals 5

    and-int/lit16 p1, p1, 0xff

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)[B

    move-result-object v0

    aget-byte v0, v0, p1

    .line 2
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    shl-long/2addr v1, v0

    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    .line 3
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s;)[I

    move-result-object v3

    aget p1, v3, p1

    int-to-long v3, p1

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    .line 4
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    .line 5
    :goto_0
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x8

    .line 6
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    .line 7
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->a:Lkg/j;

    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    shr-long/2addr v1, p1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lkg/j;->u2(I)Lkg/j;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method b()V
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    if-lez v4, :cond_0

    .line 2
    iget-wide v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    rsub-int/lit8 v7, v4, 0x8

    shl-long/2addr v5, v7

    const/16 v7, 0xff

    ushr-int v4, v7, v4

    int-to-long v7, v4

    or-long v4, v5, v7

    .line 3
    iput-wide v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    .line 4
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->a:Lkg/j;

    long-to-int v5, v4

    invoke-virtual {v6, v5}, Lkg/j;->u2(I)Lkg/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iput-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->a:Lkg/j;

    .line 6
    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    .line 7
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    return-void

    :catchall_0
    move-exception v4

    .line 8
    iput-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->a:Lkg/j;

    .line 9
    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->b:J

    .line 10
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/s$b;->c:I

    .line 11
    throw v4
.end method
