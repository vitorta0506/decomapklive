.class public abstract Lio/grpc/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/v1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/grpc/internal/v1;->n()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public k1()V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final readInt()I
    .locals 4

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Lio/grpc/internal/c;->a(I)V

    .line 2
    invoke-interface {p0}, Lio/grpc/internal/v1;->readUnsignedByte()I

    move-result v0

    .line 3
    invoke-interface {p0}, Lio/grpc/internal/v1;->readUnsignedByte()I

    move-result v1

    .line 4
    invoke-interface {p0}, Lio/grpc/internal/v1;->readUnsignedByte()I

    move-result v2

    .line 5
    invoke-interface {p0}, Lio/grpc/internal/v1;->readUnsignedByte()I

    move-result v3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public reset()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
