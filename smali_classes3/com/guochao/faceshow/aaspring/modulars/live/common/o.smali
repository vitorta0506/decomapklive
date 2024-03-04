.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/common/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

.field public final synthetic b:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/o;->b:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/o;->b:Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;Landroid/view/View;)V

    return-void
.end method
