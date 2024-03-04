.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->R3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->showDialog(Landroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$h0;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip;->setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/LiveFirstRechargeCloseTip$OnConfirmListener;)V

    return-void
.end method
