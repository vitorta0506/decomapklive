.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->select(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->access$getFragment$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->access$getFragment$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;->loadOnline()V

    :cond_0
    return-void
.end method
