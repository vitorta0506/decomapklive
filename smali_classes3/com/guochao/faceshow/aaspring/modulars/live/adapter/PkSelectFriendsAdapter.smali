.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lz9/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->c:Lz9/a;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->ivApply:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->tvUserName:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/h;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    :goto_0
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->tvUserName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getLiveState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->living:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->livingStatus:Landroid/widget/ImageView;

    const v3, 0x7f080367

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->livingStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->living:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSex()I

    move-result v0

    if-nez v0, :cond_2

    .line 18
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGender:Landroid/widget/ImageView;

    const v1, 0x7f0f02de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSex()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 22
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGender:Landroid/widget/ImageView;

    const v1, 0x7f0f02ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    const v1, 0x7f080339

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 25
    :cond_3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGender:Landroid/widget/ImageView;

    const v2, 0x7f0f0301

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 28
    :goto_2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userAge:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getAge()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->c:Lz9/a;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a00fc

    if-eq v1, v2, :cond_0

    const v2, 0x7f0a0d1c

    if-eq v1, v2, :cond_0

    const v2, 0x7f0a0d97

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->c:Lz9/a;

    const-string v2, "item_right"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->c:Lz9/a;

    const-string v2, "item"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lz9/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter;->c:Lz9/a;

    return-void
.end method
