.class public final Lcom/google/android/exoplayer2/mediacodec/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/mediacodec/m;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lcom/google/android/exoplayer2/k1;

.field public final d:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:I


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0
    .param p4    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->a:Lcom/google/android/exoplayer2/mediacodec/m;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->b:Landroid/media/MediaFormat;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->c:Lcom/google/android/exoplayer2/k1;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->d:Landroid/view/Surface;

    .line 6
    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->e:Landroid/media/MediaCrypto;

    .line 7
    iput p6, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->f:I

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k1;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .locals 8
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/l$a;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/l$a;-><init>(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method

.method public static b(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k1;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/l$a;
    .locals 8
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/l$a;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/l$a;-><init>(Lcom/google/android/exoplayer2/mediacodec/m;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/k1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method
