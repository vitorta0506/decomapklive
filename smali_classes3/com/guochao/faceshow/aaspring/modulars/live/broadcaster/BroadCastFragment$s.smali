.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->s5(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->mLiveInfoViewContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->P5:Landroid/view/animation/Animation;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$s;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->s2(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
