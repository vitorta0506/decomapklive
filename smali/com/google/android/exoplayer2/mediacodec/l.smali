.class public interface abstract Lcom/google/android/exoplayer2/mediacodec/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/l$c;,
        Lcom/google/android/exoplayer2/mediacodec/l$b;,
        Lcom/google/android/exoplayer2/mediacodec/l$a;
    }
.end annotation


# virtual methods
.method public abstract a()Landroid/media/MediaFormat;
.end method

.method public abstract b(Lcom/google/android/exoplayer2/mediacodec/l$c;Landroid/os/Handler;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method

.method public abstract c(I)V
.end method

.method public abstract d(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e(IIIJI)V
.end method

.method public abstract f()Z
.end method

.method public abstract flush()V
.end method

.method public abstract g(Landroid/os/Bundle;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation
.end method

.method public abstract h(IJ)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation
.end method

.method public abstract i()I
.end method

.method public abstract j(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract k(IILb2/c;JI)V
.end method

.method public abstract l(I)Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract setOutputSurface(Landroid/view/Surface;)V
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end method
