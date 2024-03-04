.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$e;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->d:Z

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LotteryResult;)V

    return-void
.end method
