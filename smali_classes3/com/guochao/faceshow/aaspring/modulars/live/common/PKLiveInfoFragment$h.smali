.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;
.super Lcom/guochao/faceshow/views/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->i2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/guochao/faceshow/views/g;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mTextViewCountDown:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->mILiveRoomManager:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setInPkPunishmentTime(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;JZ)V

    return-void
.end method
