.class public final Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FriendListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0003\'()B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J4\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010!\u001a\u00020\u0012H\u0016J\u0010\u0010\"\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J,\u0010#\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010%\u001a\u00020\u001bH\u0016J\u0018\u0010&\u001a\u00020\u001b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004R$\u0010\u0008\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006*"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;",
        "Landroid/widget/BaseExpandableListAdapter;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "groupList",
        "",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "getGroupList",
        "()Ljava/util/List;",
        "setGroupList",
        "(Ljava/util/List;)V",
        "getChild",
        "",
        "p0",
        "",
        "p1",
        "getChildId",
        "",
        "getChildView",
        "Landroid/view/View;",
        "groupPosition",
        "childPosition",
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
.field private context:Landroid/content/Context;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->context:Landroid/content/Context;

    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
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
    new-instance p4, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;

    invoke-direct {p4, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;-><init>(II)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0428

    invoke-virtual {v0, v1, p5, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p5

    const v0, 0x7f0a0dc5

    .line 3
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->setName(Landroid/widget/TextView;)V

    const v0, 0x7f0a00fd

    .line 4
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->setHeadView(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V

    const v0, 0x7f0a0424

    .line 5
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->setFlag(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V

    const v0, 0x7f0a01f3

    .line 6
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->setCheckStatus(Landroid/widget/ImageView;)V

    const v0, 0x7f0a0841

    .line 7
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->setOnlineState(Landroid/widget/ImageView;)V

    .line 8
    invoke-virtual {p5, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.FriendListAdapter.ChildHolder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;

    move-object v5, p5

    move-object p5, p4

    move-object p4, v5

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/db/FriendInfo;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 11
    :goto_1
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getName()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_3
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getHeadView()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getHeadImg()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v1

    :goto_4
    const v4, 0x7f0f0089

    invoke-static {v2, v3, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 13
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getFlag()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    move-result-object v2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const v3, 0x7f0f0122

    invoke-static {v2, v1, v3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 14
    invoke-virtual {p4, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;->setGroupPosition(I)V

    .line 15
    invoke-virtual {p4, p2}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;->setChildPosition(I)V

    const/4 p1, 0x1

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->isSelect()Z

    move-result p2

    if-ne p2, p1, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_7

    .line 17
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getCheckStatus()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_8

    const v1, 0x7f0f05c8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 18
    :cond_7
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getCheckStatus()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_8

    const v1, 0x7f0f05c9

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_6
    if-eqz v0, :cond_a

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/db/FriendInfo;->getOnlineStatue()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_c

    .line 20
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getOnlineState()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    .line 21
    :cond_c
    invoke-virtual {p4}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ChildHolder;->getOnlineState()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :goto_9
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p5
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, ""

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

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

    const-wide/16 v0, 0x0

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

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
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;

    const/4 v1, -0x1

    invoke-direct {p3, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;-><init>(II)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0429

    .line 3
    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    const v1, 0x7f0a04a2

    .line 4
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->setName(Landroid/widget/TextView;)V

    const v1, 0x7f0a03b0

    .line 5
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->setExpandStatus(Landroid/widget/ImageView;)V

    const v1, 0x7f0a082c

    .line 6
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->setNumber(Landroid/widget/TextView;)V

    .line 7
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.friend.SelectFriendActivity.FriendListAdapter.GroupHolder"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    if-eqz v1, :cond_8

    .line 10
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f12059a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->getName()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->getNumber()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    .line 14
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->getExpandStatus()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_a

    const v0, 0x7f0f00f2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 15
    :cond_9
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$GroupHolder;->getExpandStatus()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_a

    const v0, 0x7f0f00f3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :cond_a
    :goto_4
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter$ViewInfo;->setGroupPosition(I)V

    .line 17
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p4
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

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->context:Landroid/content/Context;

    return-void
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/SelectFriendActivity$FriendListAdapter;->groupList:Ljava/util/List;

    return-void
.end method
