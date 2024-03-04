.class Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->Q1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->R1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)Z

    move-result v0

    const-string v1, "isFreeze"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$b;->a:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
