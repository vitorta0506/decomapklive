.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->animate(Lcom/guochao/faceshow/gift/view/GiftComboView;Lcom/guochao/faceshow/gift/controller/GiftImageViewLocationEvent;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
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
.field final synthetic $anim:Landroid/animation/AnimatorSet;

.field final synthetic $imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;->$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;->$anim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;->$imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->access$recycleView(Landroid/widget/ImageView;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->access$isForEach$p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->access$getAnimCache$p()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;->$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;->$imageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->access$recycleView(Landroid/widget/ImageView;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->access$isForEach$p()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator;->access$getAnimCache$p()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/ComboSendGiftAnimator$animate$2;->$anim:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
