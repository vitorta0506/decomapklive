.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field public final synthetic c:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

.field public final synthetic d:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->c:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->d:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->c:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/e;->d:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method
