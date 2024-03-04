.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;Z)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;I)V

    .line 5
    sget-object p1, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-virtual {p1, v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->setHasRoom(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;Z)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$g;->a(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMyRoomListModel;)V

    return-void
.end method
