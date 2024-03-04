.class public final Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;
.super Lcom/tencent/trtc/TRTCCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J,\u0010\n\u001a\u00020\u00032\u001a\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cj\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u000e2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1",
        "Lcom/tencent/trtc/TRTCCloudListener;",
        "onEnterRoom",
        "",
        "result",
        "",
        "onExitRoom",
        "reason",
        "",
        "onSendFirstLocalAudioFrame",
        "onUserVoiceVolume",
        "userVolumes",
        "Ljava/util/ArrayList;",
        "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;",
        "Lkotlin/collections/ArrayList;",
        "totalVolume",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;

    invoke-direct {p0}, Lcom/tencent/trtc/TRTCCloudListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterRoom(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onEnterRoom(J)V

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setInTRTCRoom(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->getTrtcCloud()Lcom/tencent/trtc/TRTCCloud;

    move-result-object p1

    const/16 v0, 0x12c

    invoke-virtual {p1, v0, p2}, Lcom/tencent/trtc/TRTCCloud;->enableAudioVolumeEvaluation(IZ)V

    return-void
.end method

.method public onExitRoom(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/trtc/TRTCCloudListener;->onExitRoom(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->setInTRTCRoom(Z)V

    return-void
.end method

.method public onSendFirstLocalAudioFrame()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/tencent/trtc/TRTCCloudListener;->onSendFirstLocalAudioFrame()V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->access$reportOnSeat(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)V

    return-void
.end method

.method public onUserVoiceVolume(Ljava/util/ArrayList;I)V
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/trtc/TRTCCloudDef$TRTCVolumeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onUserVoiceVolume(Ljava/util/ArrayList;I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;

    invoke-static {p2}, Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;->access$get_voiceVolume$p(Lcom/guochao/component/voiceliveroom/viewmodel/TRTCVoiceRoomSeatControllerViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
