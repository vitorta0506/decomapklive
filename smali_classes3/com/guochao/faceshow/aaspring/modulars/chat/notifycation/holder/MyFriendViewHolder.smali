.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

.field ageLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iconRequest:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imageStatus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field living:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userSign:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d025a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->iconRequest:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->living:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;)Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    return-object p0
.end method


# virtual methods
.method public d(Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNickName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userId:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userName:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06006a

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userId:Landroid/widget/TextView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v0, p2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userId:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userId:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 10
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->ageLevel:Landroid/view/View;

    invoke-direct {p2, v3}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_2

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->vipIndicator:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :goto_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userSign:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    const v4, 0x7f1209bc

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getSignature()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->iconRequest:Landroid/widget/ImageView;

    const v3, 0x7f0f022a

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p3, :cond_4

    .line 18
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userDivider:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->userDivider:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$FriendBean;->getIsLive()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->living:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->imageStatus:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 23
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5

    .line 24
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/MyFriendViewHolder;->living:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void
.end method
