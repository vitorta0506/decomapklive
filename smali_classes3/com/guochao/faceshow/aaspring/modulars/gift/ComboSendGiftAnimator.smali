.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0008\u0010\u0017\u001a\u00020\u0010H\u0007J\u0008\u0010\u0018\u001a\u00020\tH\u0007J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\tH\u0003R&\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u00068\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002R&\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0004j\u0008\u0012\u0004\u0012\u00020\t`\u00068\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\n\u0010\u0002R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;",
        "",
        "()V",
        "animCache",
        "Ljava/util/ArrayList;",
        "Landroid/animation/Animator;",
        "Lkotlin/collections/ArrayList;",
        "getAnimCache$annotations",
        "imageViewCache",
        "Landroid/widget/ImageView;",
        "getImageViewCache$annotations",
        "imageViewWidth",
        "",
        "isForEach",
        "",
        "animate",
        "",
        "comboView",
        "Lcom/guochao/faceshow/gift/view/GiftComboView;",
        "event",
        "Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;",
        "giftFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;",
        "cancelAll",
        "obtainImageView",
        "recycleView",
        "imageView",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final animCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final imageViewCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final imageViewWidth:F = 32.0f

.field private static isForEach:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->imageViewCache:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animCache:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animate$lambda-0(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getAnimCache$p()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$isForEach$p()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->isForEach:Z

    return v0
.end method

.method public static final synthetic access$recycleView(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->recycleView(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static final animate(Lcom/guochao/faceshow/gift/view/GiftComboView;Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
    .locals 12
    .param p0    # Lcom/guochao/faceshow/gift/view/GiftComboView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "comboView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "giftFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 3
    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 4
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->getComboLocation()[I

    move-result-object p0

    if-nez p0, :cond_5

    return-void

    .line 5
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;->getLocation()[I

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->obtainImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    invoke-static {p2}, Lcom/bumptech/glide/c;->w(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/h;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/a;->Z(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 9
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    const/4 p1, 0x0

    .line 10
    aget v1, p0, p1

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sub-int/2addr v1, v3

    aput v1, p0, p1

    const/4 v1, 0x1

    .line 11
    aget v3, p0, v1

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    sub-int/2addr v3, p2

    aput v3, p0, v1

    .line 12
    aget p2, p0, p1

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setX(F)V

    .line 13
    aget p2, p0, v1

    int-to-float p2, p2

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setY(F)V

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;

    add-int/lit8 v6, v3, -0x14

    int-to-float v6, v6

    .line 17
    aget v7, v0, v1

    int-to-float v7, v7

    const-wide v8, 0x3fd6666666666666L    # 0.35

    aget v10, v0, v1

    sub-int/2addr p2, v10

    int-to-double v10, p2

    mul-double v10, v10, v8

    double-to-float p2, v10

    add-float/2addr v7, p2

    .line 18
    aget p2, v0, p1

    int-to-float p2, p2

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    aget v10, v0, p1

    sub-int/2addr v3, v10

    int-to-double v10, v3

    mul-double v10, v10, v8

    double-to-float v3, v10

    add-float/2addr p2, v3

    .line 19
    aget v3, v0, v1

    int-to-float v3, v3

    .line 20
    invoke-direct {v5, v6, v7, p2, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;-><init>(FFFF)V

    new-array p2, v4, [Ljava/lang/Object;

    .line 21
    new-instance v3, Landroid/graphics/PointF;

    aget v6, p0, p1

    int-to-float v6, v6

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-direct {v3, v6, p0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, p2, p1

    .line 22
    new-instance p0, Landroid/graphics/PointF;

    aget v3, v0, p1

    int-to-float v3, v3

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object p0, p2, v1

    .line 23
    invoke-static {v5, p2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 24
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/a;

    invoke-direct {p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/a;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x5

    new-array v3, v0, [F

    .line 26
    fill-array-data v3, :array_0

    const-string v5, "scaleX"

    invoke-static {v2, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v0, v0, [F

    .line 27
    fill-array-data v0, :array_1

    const-string v5, "scaleY"

    invoke-static {v2, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v5, 0x3

    new-array v6, v5, [F

    .line 28
    fill-array-data v6, :array_2

    const-string v7, "alpha"

    invoke-static {v2, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x4b0

    .line 29
    invoke-virtual {p2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 30
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;

    invoke-direct {v7, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;-><init>(Landroid/widget/ImageView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p2, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p0, v2, p1

    aput-object v3, v2, v1

    aput-object v0, v2, v4

    aput-object v6, v2, v5

    .line 31
    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 32
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 34
    sget-object p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animCache:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3fa66666    # 1.3f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3fa66666    # 1.3f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3ee66666    # 0.45f
        0x3d4ccccd    # 0.05f
    .end array-data
.end method

.method private static final animate$lambda-0(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$imageView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.graphics.PointF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/PointF;

    .line 2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 3
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public static final cancelAll()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->isForEach:Z

    .line 2
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animCache:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->isForEach:Z

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->imageViewCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static synthetic getAnimCache$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getImageViewCache$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final obtainImageView()Landroid/widget/ImageView;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->imageViewCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x42000000    # 32.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 6
    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{\n            imageViewCache.removeAt(0)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    return-object v0
.end method

.method private static final recycleView(Landroid/widget/ImageView;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->imageViewCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
