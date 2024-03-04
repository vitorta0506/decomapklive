.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/common/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/q;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/q;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/q;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/q;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V

    return-void
.end method
