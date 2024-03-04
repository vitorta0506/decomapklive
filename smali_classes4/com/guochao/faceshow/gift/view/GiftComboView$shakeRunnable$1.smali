.class public final Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/gift/view/GiftComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
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
.field final synthetic this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getHandler$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/gift/view/GiftComboView$UIHandler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v3}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v3

    new-instance v4, Lkotlin/ranges/IntRange;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v5, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->roadIV:Landroid/widget/ImageView;

    new-array v3, v6, [F

    iget-object v4, p0, Lcom/guochao/faceshow/gift/view/GiftComboView$shakeRunnable$1;->this$0:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v4}, Lcom/guochao/faceshow/gift/view/GiftComboView;->access$getBinding$p(Lcom/guochao/faceshow/gift/view/GiftComboView;)Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/guochao/faceshow/databinding/ViewGiftComboBinding;->numTV:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getY()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const-string/jumbo v4, "y"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofFloat(binding.roadIV, \u2026numTV.y).setDuration(100)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
