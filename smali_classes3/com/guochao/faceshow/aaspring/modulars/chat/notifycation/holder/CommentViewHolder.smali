.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;
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
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->userName:Landroid/widget/TextView;

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
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

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
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/guochao/faceshow/utils/TimeUtil;->getForthTimeWithSdf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getTypeId()I

    move-result v1

    const/4 v3, 0x6

    const v4, 0x7f12074a

    const-string v5, ""

    const-string v6, "\uff1a"

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eq v1, v3, :cond_18

    const/4 v3, 0x7

    const v9, 0x7f120076

    if-eq v1, v3, :cond_15

    const/16 v3, 0x9

    if-eq v1, v3, :cond_10

    const/16 v3, 0xa

    if-eq v1, v3, :cond_b

    const/16 v3, 0x20

    const v4, 0x7f120019

    if-eq v1, v3, :cond_9

    const/16 v3, 0x21

    if-eq v1, v3, :cond_5

    const/16 v3, 0x23

    if-eq v1, v3, :cond_1

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    const v3, 0x7f12001a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 34
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 41
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 45
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 46
    :cond_9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 50
    :cond_a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 53
    :cond_b
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 55
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 59
    :cond_d
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 60
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 63
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 64
    :cond_f
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 65
    :cond_10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 68
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 70
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 71
    :cond_12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 72
    :cond_13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 75
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 76
    :cond_14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_6

    .line 77
    :cond_15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 79
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 81
    :cond_17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_6

    .line 84
    :cond_18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->content:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_5

    :cond_19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefContent()Ljava/lang/String;

    move-result-object v5

    :goto_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 86
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 88
    :cond_1a
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 91
    :goto_6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getIsLiveDynamic()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 92
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    const v1, 0x7f0f022d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getLiveDynamicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 95
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_7

    .line 96
    :cond_1b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getLiveDynamicUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_1c
    :goto_7
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CommentViewHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

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
