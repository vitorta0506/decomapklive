.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/mediacodec/u;

.field public final synthetic b:Lcom/google/android/exoplayer2/mediacodec/l$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/mediacodec/u;Lcom/google/android/exoplayer2/mediacodec/l$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/t;->a:Lcom/google/android/exoplayer2/mediacodec/u;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/t;->b:Lcom/google/android/exoplayer2/mediacodec/l$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/t;->a:Lcom/google/android/exoplayer2/mediacodec/u;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/t;->b:Lcom/google/android/exoplayer2/mediacodec/l$c;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/u;->m(Lcom/google/android/exoplayer2/mediacodec/u;Lcom/google/android/exoplayer2/mediacodec/l$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
