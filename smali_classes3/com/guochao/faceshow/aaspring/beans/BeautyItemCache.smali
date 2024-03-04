.class public final Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;",
        "",
        "()V",
        "lastBeautyValue",
        "Landroid/util/ArrayMap;",
        "",
        "",
        "getLastBeautyValue",
        "()Landroid/util/ArrayMap;",
        "setLastBeautyValue",
        "(Landroid/util/ArrayMap;)V",
        "lastFaceMotion",
        "getLastFaceMotion",
        "()Ljava/lang/String;",
        "setLastFaceMotion",
        "(Ljava/lang/String;)V",
        "lastFilter",
        "getLastFilter",
        "setLastFilter",
        "lastFilterStrength",
        "getLastFilterStrength",
        "()F",
        "setLastFilterStrength",
        "(F)V",
        "isEmpty",
        "",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private lastBeautyValue:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient lastFaceMotion:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastFilter:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastFilterStrength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastBeautyValue:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final getLastBeautyValue()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastBeautyValue:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public final getLastFaceMotion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFaceMotion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastFilter()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFilter:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastFilterStrength()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFilterStrength:F

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastBeautyValue:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFilter:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFaceMotion:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setLastBeautyValue(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1    # Landroid/util/ArrayMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastBeautyValue:Landroid/util/ArrayMap;

    return-void
.end method

.method public final setLastFaceMotion(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFaceMotion:Ljava/lang/String;

    return-void
.end method

.method public final setLastFilter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFilter:Ljava/lang/String;

    return-void
.end method

.method public final setLastFilterStrength(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->lastFilterStrength:F

    return-void
.end method
