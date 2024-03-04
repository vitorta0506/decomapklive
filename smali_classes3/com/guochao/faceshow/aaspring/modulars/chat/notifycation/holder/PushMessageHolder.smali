.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;

.field cv:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field expand:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field introduce:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
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

    const v1, 0x7f0d0267

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->a:Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->cv:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v1, 0x7f0f023a

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->tvName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->tvName:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->introduce:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->introduce:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->introduce:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-wide/16 v0, 0x0

    .line 12
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v3, v5

    goto :goto_2

    :catch_0
    move-wide v3, v0

    .line 15
    :goto_2
    iget-wide v5, p1, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->createTimeLong:J

    cmp-long v2, v5, v0

    if-lez v2, :cond_3

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->createTimeLong:J

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/guochao/faceshow/utils/TimeUtil;->getGiftTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
