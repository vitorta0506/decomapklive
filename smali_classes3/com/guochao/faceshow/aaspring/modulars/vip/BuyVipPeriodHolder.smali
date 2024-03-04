.class public Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field freeLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field freePeriod:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field freePeriodInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field lineView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field noFreeLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field period:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field periodInfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field price:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field subTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field subscriptionPeriodView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->a:Landroid/view/View;

    .line 3
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;)V

    const-string v2, "buy_vip_fire"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;III)V
    .locals 4

    .line 1
    invoke-virtual {p0, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->c(III)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SubSkuDetailsBean;->getSkuDetails()Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->f()Ljava/lang/String;

    move-result-object p3

    const-string v0, "[\\d]"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->h()Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->d()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->g()Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f1209ed

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f1209eb

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p2, p4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne p4, v2, :cond_3

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f120a13

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120a1f

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne p4, v1, :cond_4

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f1209ea

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 15
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 16
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 17
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subscriptionPeriodView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    return-void
.end method

.method public b(III)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->c(III)V

    const/4 p2, 0x2

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subTitle:Landroid/widget/TextView;

    const p2, 0x7f120a0e

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->noFreeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->periodInfo:Landroid/widget/TextView;

    const p2, 0x7f120a22

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subTitle:Landroid/widget/TextView;

    const p2, 0x7f120a0a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->noFreeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->periodInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a09

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    const-string v0, ""

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subTitle:Landroid/widget/TextView;

    const v3, 0x7f120958

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    if-ne p3, v2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriodInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1209ef

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->noFreeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-ne p3, p2, :cond_4

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->noFreeLay:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->periodInfo:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120a08

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(III)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p2, :cond_3

    .line 1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060093

    const v4, 0x7f0603cd

    if-ne p3, v0, :cond_0

    const v5, 0x7f060093

    goto :goto_0

    :cond_0
    const v5, 0x7f0603cd

    :goto_0
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriod:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    const v3, 0x7f0603cd

    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->lineView:Landroid/view/View;

    if-ne p3, v0, :cond_2

    const p3, 0x7f0800e5

    goto :goto_2

    :cond_2
    const p3, 0x7f0800e6

    :goto_2
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 4
    :cond_3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriod:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->lineView:Landroid/view/View;

    const v1, 0x7f0800e4

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    :goto_3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->a:Landroid/view/View;

    if-ne p1, p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    const/16 p3, 0x8

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    return-void
.end method
