.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

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

    const v1, 0x7f0d023e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getFromNickName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getFromSex()I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getFromImg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->iconVideoLay:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->bgVideo:Landroid/widget/ImageView;

    invoke-static {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->d0(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->iconVideo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->iconVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const-wide/16 v0, 0x0

    .line 17
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "EST5EDT"

    .line 18
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getContentDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v0, v3, v0

    goto :goto_2

    :catch_0
    nop

    .line 21
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->timeHistory:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftNum()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 24
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftImg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->urlToDrawable(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/r;)V

    :goto_4
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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getUserId()Ljava/lang/String;

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
