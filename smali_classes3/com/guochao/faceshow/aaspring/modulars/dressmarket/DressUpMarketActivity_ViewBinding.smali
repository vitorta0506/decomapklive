.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'tabs\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 4
    const-class v0, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    const v1, 0x7f0a0e2e

    const-string v2, "field \'vpContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity_ViewBinding;->c:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 5
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method