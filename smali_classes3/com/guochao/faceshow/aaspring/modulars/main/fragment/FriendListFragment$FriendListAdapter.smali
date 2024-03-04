.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001:\u0003$%&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J4\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u001c\u001a\u00020\u000fH\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J,\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0018\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;",
        "Landroid/widget/BaseExpandableListAdapter;",
        "context",
        "Landroidx/fragment/app/Fragment;",
        "(Landroidx/fragment/app/Fragment;)V",
        "groupList",
        "",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "getGroupList",
        "()Ljava/util/List;",
        "setGroupList",
        "(Ljava/util/List;)V",
        "getChild",
        "Lcom/guochao/faceshow/aaspring/db/FriendInfo;",
        "groupPosition",
        "",
        "childPosition",
        "getChildId",
        "",
        "getChildView",
        "Landroid/view/View;",
        "isLastChild",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "getChildrenCount",
        "getGroup",
        "getGroupCount",
        "getGroupId",
        "getGroupView",
        "isExpanded",
        "hasStableIds",
        "isChildSelectable",
        "p0",
        "p1",
        "ChildHolder",
        "GroupHolder",
        "ViewInfo",
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
.field private final context:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->context:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/guochao/faceshow/aaspring/db/FriendInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getChild(II)Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p3, 0x0

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;

    invoke-direct {p4, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;-><init>(II)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->context:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03ec

    .line 3
    invoke-virtual {v0, v1, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    const v0, 0x7f0a0dc5

    .line 4
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->setName(Landroid/widget/TextView;)V

    const v0, 0x7f0a00fd

    .line 5
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->setHeadView(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V

    const v0, 0x7f0a0424

    .line 6
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->setFlag(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V

    const v0, 0x7f0a0841

    .line 7
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->setOnlineState(Landroid/widget/ImageView;)V

    const v0, 0x7f0a0add

    .line 8
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->setStatus(Landroid/widget/TextView;)V

    const v0, 0x7f0a0dd4

    .line 9
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->setUserSign(Landroid/widget/TextView;)V

    .line 10
    invoke-virtual {p5, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p5

    move-object p5, p4

    move-object p4, v6

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.FriendListAdapter.ChildHolder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto/16 :goto_13

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 14
    :goto_3
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getName()Landroid/widget/TextView;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v2

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_5
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getHeadView()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    move-result-object v3

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getHeadImg()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v2

    :goto_6
    const v5, 0x7f0f0089

    invoke-static {v3, v4, v5}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 16
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getFlag()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    move-result-object v3

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v2

    :goto_7
    const v5, 0x7f0f0122

    invoke-static {v3, v4, v5}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 17
    invoke-virtual {p5, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;->setGroupPosition(I)V

    .line 18
    invoke-virtual {p5, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;->setChildPosition(I)V

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getSignature()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_9
    move-object p1, v2

    :goto_8
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_a

    goto :goto_9

    :cond_a
    const/4 p1, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    const/4 p1, 0x1

    :goto_a
    if-eqz p1, :cond_d

    .line 20
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getUserSign()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_c

    :cond_c
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->context:Landroidx/fragment/app/Fragment;

    const v3, 0x7f1209bc

    invoke-virtual {p2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 21
    :cond_d
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getUserSign()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_e

    goto :goto_c

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getSignature()Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_f
    move-object p2, v2

    :goto_b
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    if-eqz v0, :cond_11

    .line 22
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_d

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_11

    const/4 p1, 0x1

    goto :goto_e

    :cond_11
    :goto_d
    const/4 p1, 0x0

    :goto_e
    const/16 p2, 0x8

    if-eqz p1, :cond_14

    .line 23
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getOnlineState()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_12

    goto :goto_f

    :cond_12
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    :goto_f
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getStatus()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_11

    :cond_13
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11

    .line 25
    :cond_14
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getOnlineState()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    :goto_10
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getStatus()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_16

    goto :goto_11

    :cond_16
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    if-eqz v0, :cond_17

    .line 27
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineTime()Ljava/lang/Long;

    move-result-object v2

    :cond_17
    const-string p1, ""

    if-nez v2, :cond_19

    .line 28
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getStatus()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_18

    goto :goto_12

    :cond_18
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 29
    :cond_19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineTime()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/utils/TimeUtil;->getTime(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 31
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getStatus()Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_12

    :cond_1a
    sget-object p5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p5, v1, [Ljava/lang/Object;

    aput-object p2, p5, p3

    invoke-static {p5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "[%s]"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(format, *args)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    .line 32
    :cond_1b
    invoke-virtual {p5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->getStatus()Landroid/widget/TextView;

    move-result-object p2

    if-nez p2, :cond_1c

    goto :goto_12

    :cond_1c
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_12
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p4

    .line 34
    :cond_1d
    :goto_13
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz p3, :cond_1e

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_1e

    .line 36
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p4

    .line 37
    :cond_1e
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_2
    return v2
.end method

.method public getGroup(I)Lcom/guochao/faceshow/aaspring/db/GroupInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->getGroup(I)Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    return-object v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;

    const/4 v1, -0x1

    invoke-direct {p3, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;-><init>(II)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->context:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01fb

    .line 3
    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const v1, 0x7f0a04a2

    .line 4
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->setName(Landroid/widget/TextView;)V

    const v1, 0x7f0a03b0

    .line 5
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->setExpandStatus(Landroid/widget/ImageView;)V

    const v1, 0x7f0a082c

    .line 6
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->setNumber(Landroid/widget/TextView;)V

    .line 7
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.main.fragment.FriendListFragment.FriendListAdapter.GroupHolder"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_3

    goto/16 :goto_7

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v1, :cond_b

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->context:Landroidx/fragment/app/Fragment;

    const v3, 0x7f12059a

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :goto_3
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->getNumber()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_a
    const-string v1, ""

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_5
    if-eqz p2, :cond_c

    .line 15
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->getExpandStatus()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_d

    const v0, 0x7f0f00f2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 16
    :cond_c
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->getExpandStatus()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_d

    const v0, 0x7f0f00f3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :cond_d
    :goto_6
    invoke-virtual {p4, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;->setGroupPosition(I)V

    .line 18
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p3

    .line 19
    :cond_e
    :goto_7
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final setGroupList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;->groupList:Ljava/util/List;

    return-void
.end method
