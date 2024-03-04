.class Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/ObservableScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/ObservableScrollView;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2
    instance-of p2, p1, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    check-cast p1, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->getCurrentPage()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xa

    if-le p3, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->titleBar:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->n:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->titleBar:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->n:Z

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;

    iget-boolean p2, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeFragment;->n:Z

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->i0()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->k0()V

    :cond_2
    :goto_1
    return-void
.end method
