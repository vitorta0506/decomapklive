.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->setEnvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "onScroll",
        "",
        "view",
        "Landroid/widget/AbsListView;",
        "firstVisibleItem",
        "",
        "visibleItemCount",
        "totalItemCount",
        "onScrollStateChanged",
        "p0",
        "p1",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/16 p3, 0x8

    if-nez p2, :cond_0

    .line 1
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p4

    iget-object p4, p4, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_7

    const/4 p4, 0x0

    .line 2
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$setEnvent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;->getGroupPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->access$setCurrentGroupIndex$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;I)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;->getGroupPosition()I

    move-result v1

    if-ltz v1, :cond_6

    if-lez p2, :cond_6

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->access$getAdapter$p(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getGroupList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;->getGroupPosition()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_7

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupName:Landroid/widget/TextView;

    const v1, 0x7f12059a

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupName:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->number:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->isSelect()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 16
    :cond_6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentFriendListBinding;->groupNameLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_4
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
