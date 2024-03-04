.class public final Lcom/tencent/qgame/animplayer/mask/MaskConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B=\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u0012\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\tB\u0005\u00a2\u0006\u0002\u0010\nJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0006\u0010\u001e\u001a\u00020\u0017J\u0008\u0010\u001f\u001a\u00020\u0017H\u0016J\u0006\u0010 \u001a\u00020!J\u0010\u0010\"\u001a\u00020!2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003J\u0006\u0010#\u001a\u00020\u0017R(\u0010\u000c\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015\u00a8\u0006$"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/mask/MaskConfig;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "positionPair",
        "Lkotlin/Pair;",
        "Lcom/tencent/qgame/animplayer/PointRect;",
        "Lcom/tencent/qgame/animplayer/RefVec2;",
        "texPair",
        "(Landroid/graphics/Bitmap;Lkotlin/Pair;Lkotlin/Pair;)V",
        "()V",
        "value",
        "alphaMaskBitmap",
        "getAlphaMaskBitmap",
        "()Landroid/graphics/Bitmap;",
        "setAlphaMaskBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "maskPositionPair",
        "getMaskPositionPair",
        "()Lkotlin/Pair;",
        "setMaskPositionPair",
        "(Lkotlin/Pair;)V",
        "maskTexId",
        "",
        "maskTexPair",
        "getMaskTexPair",
        "setMaskTexPair",
        "equals",
        "",
        "other",
        "getMaskTexId",
        "hashCode",
        "release",
        "",
        "safeSetMaskBitmapAndReleasePre",
        "updateMaskTex",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private alphaMaskBitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maskPositionPair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maskTexId:I

.field private maskTexPair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lkotlin/Pair;Lkotlin/Pair;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;",
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    .line 3
    iput-object p3, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->setAlphaMaskBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final setAlphaMaskBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->alphaMaskBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->alphaMaskBitmap:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    iget-object v2, p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->alphaMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/PointRect;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v3, p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qgame/animplayer/PointRect;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/RefVec2;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    iget-object v3, p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qgame/animplayer/RefVec2;

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/PointRect;

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    iget-object v3, p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qgame/animplayer/PointRect;

    goto :goto_5

    :cond_5
    move-object v3, v2

    :goto_5
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/RefVec2;

    goto :goto_6

    :cond_6
    move-object v0, v2

    :goto_6
    iget-object p1, p1, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/tencent/qgame/animplayer/RefVec2;

    :cond_7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public final getAlphaMaskBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->alphaMaskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getMaskPositionPair()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    return-object v0
.end method

.method public final getMaskTexId()I
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexId:I

    return v0
.end method

.method public final getMaskTexPair()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->alphaMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlin/Pair;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lkotlin/Pair;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->setAlphaMaskBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    .line 3
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    return-void
.end method

.method public final safeSetMaskBitmapAndReleasePre(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexId:I

    if-lez v0, :cond_0

    .line 2
    sget-object v1, Lcom/tencent/qgame/animplayer/util/TextureLoadUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TextureLoadUtil;

    invoke-virtual {v1, v0}, Lcom/tencent/qgame/animplayer/util/TextureLoadUtil;->releaseTexure(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexId:I

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->setAlphaMaskBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final setMaskPositionPair(Lkotlin/Pair;)V
    .locals 0
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskPositionPair:Lkotlin/Pair;

    return-void
.end method

.method public final setMaskTexPair(Lkotlin/Pair;)V
    .locals 0
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/tencent/qgame/animplayer/PointRect;",
            "Lcom/tencent/qgame/animplayer/RefVec2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexPair:Lkotlin/Pair;

    return-void
.end method

.method public final updateMaskTex()I
    .locals 2

    sget-object v0, Lcom/tencent/qgame/animplayer/util/TextureLoadUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/TextureLoadUtil;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->alphaMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tencent/qgame/animplayer/util/TextureLoadUtil;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskConfig;->maskTexId:I

    return v0
.end method
