.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;
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

    const v1, 0x7f0d021a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getNickName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->content:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120740

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getContent()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getSex()I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getImg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getCountryFlag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    const-wide/16 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "yyyy-MM-dd HH:mm"

    if-nez v3, :cond_1

    .line 13
    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "EST5EDT"

    .line 14
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 15
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-long v1, v4, v1

    .line 18
    :catch_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getForthTimeWithSdf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getTypeId()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v1, v2, :cond_c

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_c

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x24

    if-eq v1, v2, :cond_2

    const/16 v2, 0x25

    if-eq v1, v2, :cond_2

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->content:Landroid/widget/TextView;

    const v2, 0x7f120018

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 29
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 39
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_2

    .line 40
    :cond_8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 52
    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 55
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    const v1, 0x7f0f0333

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 59
    :goto_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getIsLiveDynamic()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 60
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    const v1, 0x7f0f022d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getLiveDynamicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 63
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 64
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getLiveDynamicUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_f
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AtMeViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

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
