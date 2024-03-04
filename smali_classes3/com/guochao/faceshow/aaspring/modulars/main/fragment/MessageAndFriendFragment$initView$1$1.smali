.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1",
        "Landroidx/fragment/app/FragmentPagerAdapter;",
        "getCount",
        "",
        "getItem",
        "Landroidx/fragment/app/Fragment;",
        "position",
        "getPageTitle",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;->access$getFragment$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ConversationListFragmentV2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    const v0, 0x7f1203ba

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment$initView$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/MessageAndFriendFragment;

    const v0, 0x7f12016c

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
