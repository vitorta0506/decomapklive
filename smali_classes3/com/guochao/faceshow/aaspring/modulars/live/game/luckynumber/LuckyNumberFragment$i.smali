.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->q2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->X1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)V

    return-void
.end method

.method public onResponse()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->W1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->a()I

    move-result v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;)V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment$i;->b:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;

    .line 2
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;->i2(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberFragment;)Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v3

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;->W1(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog$a;I)Lcom/guochao/faceshow/aaspring/modulars/live/game/JoinGameDialog;

    return-void
.end method
