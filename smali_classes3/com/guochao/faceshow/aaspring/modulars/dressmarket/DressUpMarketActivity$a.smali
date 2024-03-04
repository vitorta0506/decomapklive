.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpRulesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->vpContent:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->getCurrentItem()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
