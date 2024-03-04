.class public final Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0015\u001a\u00020\u0016H\u0014J\u0008\u0010\u0017\u001a\u00020\u0016H\u0014J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "anim",
        "Landroid/animation/ValueAnimator;",
        "getAnim",
        "()Landroid/animation/ValueAnimator;",
        "setAnim",
        "(Landroid/animation/ValueAnimator;)V",
        "d",
        "Landroid/graphics/drawable/Drawable;",
        "rotate",
        "",
        "getRotate",
        "()F",
        "setRotate",
        "(F)V",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onMeasure",
        "widthMeasureSpec",
        "",
        "heightMeasureSpec",
        "component_f2f_match_release"
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
.field private anim:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rotate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/guochao/faceshow/component/f2fmatch/R$mipmap;->f2f_header_loading_anim:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->onAttachedToWindow$lambda-4$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda-4$lambda-3(Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->rotate:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public final getAnim()Landroid/animation/ValueAnimator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->anim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public final getRotate()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->rotate:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/component/f2fmatch/view/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/f2fmatch/view/a;-><init>(Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x5dc

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 6
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->anim:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->anim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->rotate:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p1, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public final setAnim(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->anim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setRotate(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/component/f2fmatch/view/F2fAvatarView;->rotate:F

    return-void
.end method
