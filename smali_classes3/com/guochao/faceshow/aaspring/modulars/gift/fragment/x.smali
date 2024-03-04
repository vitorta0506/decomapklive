.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/x;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/x;->a:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/VoiceRoomGiftFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;)V

    return-void
.end method
