.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field public final synthetic b:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

.field public final synthetic c:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;->b:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;->c:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;->b:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/d;->c:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;Landroid/view/View;)V

    return-void
.end method
