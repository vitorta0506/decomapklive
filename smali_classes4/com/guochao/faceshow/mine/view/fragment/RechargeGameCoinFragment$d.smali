.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;->b:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;->a:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;->b:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$d;->a:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->d:Lcom/guochao/faceshow/aaspring/beans/GameCoinBean$GameCoin;

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->V1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
