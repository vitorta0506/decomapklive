.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

.field bgVideo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field content:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iconVideo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field iconVideoLay:Landroid/widget/FrameLayout;
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

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userNameLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0226

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getSex()I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getImg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getCountryFlag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "yyyy-MM-dd HH:mm"

    if-nez v1, :cond_0

    .line 12
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "EST5EDT"

    .line 13
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getCreateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long/2addr v2, v4

    goto :goto_1

    :catch_0
    const-wide/16 v2, 0x0

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/guochao/faceshow/utils/TimeUtil;->getForthTimeWithSdf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getTypeId()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v1, v3, :cond_11

    if-eq v1, v2, :cond_d

    const/16 v6, 0x19

    if-eq v1, v6, :cond_b

    const/16 v6, 0x1c

    if-eq v1, v6, :cond_7

    const/16 v6, 0x26

    if-eq v1, v6, :cond_5

    const/16 v6, 0x27

    if-eq v1, v6, :cond_1

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->content:Landroid/widget/TextView;

    const v6, 0x7f12008c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 34
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->content:Landroid/widget/TextView;

    const v6, 0x7f120091

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 41
    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->content:Landroid/widget/TextView;

    const v6, 0x7f12008d

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 47
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 48
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 53
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->content:Landroid/widget/TextView;

    const v6, 0x7f12008e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 57
    :cond_c
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 60
    :cond_d
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->content:Landroid/widget/TextView;

    const v6, 0x7f12008f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 63
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v6}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 65
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 66
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 67
    :cond_f
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 70
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 71
    :cond_10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 72
    :cond_11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->content:Landroid/widget/TextView;

    const v6, 0x7f120090

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 74
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 76
    :cond_12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 79
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getIsLiveDynamic()I

    move-result v0

    if-ne v0, v3, :cond_14

    .line 80
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    const v1, 0x7f0f022d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getLiveDynamicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 83
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 84
    :cond_13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getLiveDynamicUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_14
    :goto_3
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00fd -> :sswitch_0
        0x7f0a0dc5 -> :sswitch_0
        0x7f0a0dc6 -> :sswitch_0
    .end sparse-switch
.end method
