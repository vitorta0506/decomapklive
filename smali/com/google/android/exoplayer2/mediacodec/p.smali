.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$f;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/p;->a:Lcom/google/android/exoplayer2/k1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/p;->a:Lcom/google/android/exoplayer2/k1;

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/m;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->c(Lcom/google/android/exoplayer2/k1;Lcom/google/android/exoplayer2/mediacodec/m;)I

    move-result p1

    return p1
.end method
