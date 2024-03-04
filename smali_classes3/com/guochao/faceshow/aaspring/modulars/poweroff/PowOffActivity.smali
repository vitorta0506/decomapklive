.class public Lcom/guochao/faceshow/aaspring/modulars/poweroff/PowOffActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0096

    return v0
.end method

.method public initView()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PowOffBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x2

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;->getEvent()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v6, v9, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;->getEvent()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;

    invoke-virtual {v9}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->getStartTime()J

    move-result-wide v11

    if-nez v6, :cond_0

    .line 5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;->getEvent()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->getDuration()I

    move-result v7

    :cond_0
    if-ne v6, v10, :cond_1

    .line 7
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;->getEvent()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Event;->getDuration()I

    move-result v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0b73

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const v6, 0x7f12072c

    if-eqz v1, :cond_3

    .line 11
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v2, v7, v4

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v6, 0x7f06032c

    .line 15
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    new-array v9, v3, [Ljava/lang/String;

    aput-object v1, v9, v4

    aput-object v2, v9, v10

    invoke-static {v0, v7, v4, v9}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;II[Ljava/lang/String;)V

    const v0, 0x7f0a0b74

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    const v2, 0x7f12072d

    if-eqz v1, :cond_4

    .line 18
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    aput-object v1, v7, v10

    invoke-static {v2, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :cond_4
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_2
    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    aput-object v5, v3, v10

    invoke-static {v0, v2, v4, v3}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setSpannerString(Landroid/widget/TextView;II[Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
