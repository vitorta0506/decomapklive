.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->d:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->getDiamond()I

    move-result p1

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->T1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$c;->a:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->d:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;->getRuleId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->U1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;I)V

    :goto_0
    return-void
.end method
