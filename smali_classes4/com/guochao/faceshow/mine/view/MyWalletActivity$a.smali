.class Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/MyWalletActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/MyWalletActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/MyWalletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b0(Lcom/guochao/faceshow/mine/view/MyWalletActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of p2, p1, Lcom/guochao/faceshow/mine/view/fragment/a;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/mine/view/fragment/a;

    invoke-interface {p1}, Lcom/guochao/faceshow/mine/view/fragment/a;->i0()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->b0(Lcom/guochao/faceshow/mine/view/MyWalletActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/mine/view/fragment/a;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/mine/view/fragment/a;

    invoke-interface {v1}, Lcom/guochao/faceshow/mine/view/fragment/a;->E0()V

    .line 4
    :cond_0
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordFragment;

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    instance-of p1, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget-boolean p1, v0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->n:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->k0()V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/MyWalletActivity$a;->a:Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->i0()V

    :goto_1
    return-void
.end method
