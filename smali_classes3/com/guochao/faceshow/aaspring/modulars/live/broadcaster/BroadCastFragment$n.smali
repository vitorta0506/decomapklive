.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->onPushSuccess(Lcom/guochao/pusher/base/ILivePusher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "status"

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->G4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Z)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->btnInvite:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->addPrivateShareMessage()V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->J4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->Q4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isPersons()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->W5:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->I4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->J4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPkWaiting()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$n;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->y:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;->setPkState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
