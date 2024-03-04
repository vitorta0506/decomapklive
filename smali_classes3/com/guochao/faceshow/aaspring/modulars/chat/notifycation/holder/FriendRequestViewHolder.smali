.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

.field private b:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

.field iconRequest:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field timeHistory:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userCenterAgeLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userNameLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/FriendRequestListActivity;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d026b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userCenterAgeLevel:Landroid/view/View;

    invoke-direct {p1, p2, v1, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;ZZ)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    return-void
.end method


# virtual methods
.method public c()Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->b:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    return-object v0
.end method

.method public d(Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;Z)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->b:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getIsOnline()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setOnline(Z)V

    const-wide/16 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "yyyy-MM-dd HH:mm"

    if-nez p2, :cond_1

    .line 7
    :try_start_1
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "EST5EDT"

    .line 8
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 9
    :cond_1
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {p2, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long v0, v2, v0

    .line 12
    :catch_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->timeHistory:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->e(Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)V

    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->iconRequest:Landroid/widget/ImageView;

    const v0, 0x7f0f022c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->iconRequest:Landroid/widget/ImageView;

    const v0, 0x7f0f022b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->iconRequest:Landroid/widget/ImageView;

    const v0, 0x7f0f0242

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onViewClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->b:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;->b:Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/FriendRequestBean;->getAccount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/FriendRequestViewHolder;)V

    invoke-static {v0, v1, v2, v3}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    :cond_0
    return-void
.end method
