.class public Lcom/tencent/xmagic/XmagicPropertyChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "XmagicPropertyChecker"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkBeauty(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBeauty,xmagicProperty.effKey is invalid"

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBeauty.xmagicProperty.effValue is invalid"

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const-string v2, "basicV7.natureFace"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const-string v2, "basicV7.godnessFace"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const-string v2, "basicV7.maleGodFace"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBeauty,xmagicProperty.id  is invalid"

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const-string v1, "beauty.faceFeatureLipsLut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "beauty.lips.lipsMask"

    .line 11
    invoke-static {p0, v0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkBeautyItem(Lcom/tencent/xmagic/XmagicProperty;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const-string v1, "beauty.faceFeatureRedCheek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "beauty.makeupMultiply.multiplyMask"

    .line 13
    invoke-static {p0, v0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkBeautyItem(Lcom/tencent/xmagic/XmagicProperty;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const-string v1, "beauty.faceFeatureSoftlight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "beauty.softLight.softLightMask"

    .line 15
    invoke-static {p0, v0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkBeautyItem(Lcom/tencent/xmagic/XmagicProperty;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static checkBeautyItem(Lcom/tencent/xmagic/XmagicProperty;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string p1, "checkBeautyItem,xmagicProperty.id is invalid "

    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string p1, "checkBeautyItem,xmagicProperty.resPath is invalid "

    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static checkBodyBeauty(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBodyBeauty\uff0cxmagicProperty.id is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBodyBeauty\uff0cxmagicProperty.resPath is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBodyBeauty\uff0cxmagicProperty.effKey is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-nez p0, :cond_3

    .line 8
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkBodyBeauty\uff0cxmagicProperty.effValue is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static checkLut(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    const-string v2, "ID_NONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    .line 3
    iget-object v3, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkLut,xmagicProperty.resPath is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-eqz v0, :cond_5

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    .line 6
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkLut,xmagicProperty.effValue is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_6
    iget-object p0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 8
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkLut,xmagicProperty.effKey is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    return v2
.end method

.method private static checkMakeUp(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMakeUp,xmagicProperty.id is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMakeUp,xmagicProperty.resPath is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    const-string v2, "ID_NONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    .line 7
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMakeUp,xmagicProperty.effKey is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-eqz v0, :cond_5

    if-nez p0, :cond_6

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_6

    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_7

    .line 9
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMakeUp,xmagicProperty.effValue is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_7
    return v2
.end method

.method private static checkMotion(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMotion,xmagicProperty.id is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMotion,xmagicProperty.resPath is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMotion,xmagicProperty.effKey is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-eqz p0, :cond_3

    .line 8
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkMotion,xmagicProperty.effValue is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static checkProperty(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v1, "checkProperty,xmagicProperty is invalid"

    invoke-static {p0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-nez v1, :cond_1

    .line 3
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v1, "checkProperty,xmagicProperty.category is invalid"

    invoke-static {p0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4
    :cond_1
    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v0, v1, :cond_2

    .line 5
    invoke-static {p0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkBeauty(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result p0

    return p0

    .line 6
    :cond_2
    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->BODY_BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v0, v1, :cond_3

    .line 7
    invoke-static {p0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkBodyBeauty(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result p0

    return p0

    .line 8
    :cond_3
    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v0, v1, :cond_4

    .line 9
    invoke-static {p0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkLut(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result p0

    return p0

    .line 10
    :cond_4
    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v0, v1, :cond_5

    .line 11
    invoke-static {p0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkMotion(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result p0

    return p0

    .line 12
    :cond_5
    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->MAKEUP:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v0, v1, :cond_6

    .line 13
    invoke-static {p0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkMakeUp(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result p0

    return p0

    .line 14
    :cond_6
    sget-object v0, Lcom/tencent/xmagic/XmagicProperty$Category;->SEGMENTATION:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v0, v1, :cond_7

    .line 15
    invoke-static {p0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkSeg(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result p0

    return p0

    .line 16
    :cond_7
    sget-object p0, Lcom/tencent/xmagic/XmagicProperty$Category;->KV:Lcom/tencent/xmagic/XmagicProperty$Category;

    const/4 p0, 0x1

    return p0
.end method

.method private static checkSeg(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkSeg,xmagicProperty.id is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkSeg,xmagicProperty.resPath is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    const-string/jumbo v2, "video_empty_segmentation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_4

    .line 7
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkSeg,xmagicProperty.effKey is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-eqz p0, :cond_5

    .line 9
    sget-object p0, Lcom/tencent/xmagic/XmagicPropertyChecker;->TAG:Ljava/lang/String;

    const-string v0, "checkSeg,xmagicProperty.effValue is invalid "

    invoke-static {p0, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    return v2
.end method
