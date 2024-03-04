.class public final Lio/grpc/netty/shaded/io/netty/channel/epoll/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:I

.field private static final e:I


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:J

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->sizeofEpollEvent()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->d:I

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->offsetofEpollData()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->e:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->c:I

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a(I)I

    move-result p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->b(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->b:J

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be >= 1 but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->d:I

    mul-int p0, p0, v0

    return p0
.end method

.method private e(II)I
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-long v0, p1

    .line 2
    sget p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->d:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    .line 3
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->b:J

    add-long/2addr v2, v0

    int-to-long p1, p2

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E(J)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a:Ljava/nio/ByteBuffer;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->d:I

    mul-int p1, p1, v1

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method b(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->e(II)I

    move-result p1

    return p1
.end method

.method c(I)I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->e:I

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->e(II)I

    move-result p1

    return p1
.end method

.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->c(Ljava/nio/ByteBuffer;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->b:J

    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->c:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->c:I

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a(I)I

    move-result v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->c(Ljava/nio/ByteBuffer;)V

    .line 4
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->a:Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->b:J

    return-void
.end method

.method g()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->c:I

    return v0
.end method

.method h()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/g;->b:J

    return-wide v0
.end method
