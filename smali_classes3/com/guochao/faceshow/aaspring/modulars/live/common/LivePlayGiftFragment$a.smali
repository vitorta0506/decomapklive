.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsa/a$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->B3()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayGiftFragment;)Lsa/a;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->m3(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Lsa/a;)V

    :cond_2
    :goto_0
    return-void
.end method
