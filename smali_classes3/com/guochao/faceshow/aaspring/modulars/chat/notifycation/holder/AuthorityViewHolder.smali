.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field iconItem:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field primaryTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field secondaryTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field timeHistory:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field unReadNum:Landroid/widget/TextView;
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

    const v1, 0x7f0d021b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private c(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "EST5EDT"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContentDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, v2

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-static {p2, v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public d(ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMessageType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v2, v0, :cond_8

    const/4 v0, 0x2

    if-eq v2, v0, :cond_6

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    if-eq v2, v4, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->iconItem:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v2, 0x7f0f0229

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->primaryTitle:Landroid/widget/TextView;

    const v2, 0x7f12002e

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->iconItem:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v1, 0x7f0f0226

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->primaryTitle:Landroid/widget/TextView;

    const v1, 0x7f12003c

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftImg()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;->urlToDrawable(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/r;)V

    .line 17
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->iconItem:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v2, 0x7f0f023a

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->primaryTitle:Landroid/widget/TextView;

    const v2, 0x7f120085

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->iconItem:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v2, 0x7f0f021b

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->primaryTitle:Landroid/widget/TextView;

    const/high16 v2, 0x7f120000

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :goto_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    :cond_a
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v0

    if-gtz v0, :cond_b

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->unReadNum:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 33
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->unReadNum:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_c

    const-string v1, "99+"

    goto :goto_6

    :cond_c
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->unReadNum:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    :goto_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->timeHistory:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    .line 37
    :catch_1
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->c(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V

    :cond_d
    :goto_8
    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->f()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->unReadNum:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->unReadNum:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
