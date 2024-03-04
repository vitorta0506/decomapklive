.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$IData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->setCurrentIndex(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setData(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$802(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$000(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getId()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    const v0, 0x7f120a43

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->launchNextBtn:Landroid/widget/TextView;

    const v0, 0x7f120a45

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$m;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$900(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    :cond_2
    return-void
.end method
