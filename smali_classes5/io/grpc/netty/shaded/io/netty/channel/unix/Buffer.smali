.class public final Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->e()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->addressSize0()I

    move-result v0

    return v0
.end method

.method private static native addressSize0()I
.end method

.method public static b(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->z(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static d(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->memoryAddress0(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native memoryAddress0(Ljava/nio/ByteBuffer;)J
.end method
