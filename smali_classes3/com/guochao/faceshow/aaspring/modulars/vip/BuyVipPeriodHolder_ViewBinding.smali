.class public Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ae8

    const-string v2, "field \'subTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subTitle:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a044a

    const-string v2, "field \'freePeriodInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriodInfo:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0449

    const-string v2, "field \'freePeriod\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriod:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0448

    const-string v2, "field \'freeLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freeLay:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0879

    const-string v2, "field \'period\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a087a

    const-string v2, "field \'periodInfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->periodInfo:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0817

    const-string v2, "field \'noFreeLay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->noFreeLay:Landroid/widget/LinearLayout;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0aec

    const-string v2, "field \'subscriptionPeriodView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subscriptionPeriodView:Landroid/widget/TextView;

    const v0, 0x7f0a065e

    const-string v1, "field \'lineView\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->lineView:Landroid/view/View;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08ba

    const-string v2, "field \'price\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    .line 13
    const-class v0, Lcom/opensource/svgaplayer/SVGAImageView;

    const v1, 0x7f0a09f1

    const-string v2, "field \'mSVGAImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subTitle:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriodInfo:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freePeriod:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->freeLay:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->period:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->periodInfo:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->noFreeLay:Landroid/widget/LinearLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->subscriptionPeriodView:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->lineView:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->price:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/BuyVipPeriodHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
