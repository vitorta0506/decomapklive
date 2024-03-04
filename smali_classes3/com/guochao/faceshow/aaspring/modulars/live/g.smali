.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;

.field public final synthetic b:Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/g;->b:Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/g;->b:Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/VoiceRoomLiveTopUserInfoFragment;Lcom/guochao/faceshow/databinding/FragmentVoiceRoomLiveTopUserInfoBinding;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method
