.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;
.super Landroidx/fragment/app/FragmentPagerAdapter;
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
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    const v0, 0x7f120a2b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    const v0, 0x7f1209dd

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    const v0, 0x7f1209dc

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
