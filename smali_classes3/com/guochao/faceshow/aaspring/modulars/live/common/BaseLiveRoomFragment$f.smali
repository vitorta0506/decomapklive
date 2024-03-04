.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->p1(ZLjava/lang/String;Ljava/lang/String;Ld9/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ld9/h;

.field final synthetic e:Z

.field final synthetic f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;ZLjava/lang/String;Ljava/lang/String;Ld9/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->d:Ld9/h;

    iput-boolean p6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->e:Z

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
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->d:Ld9/h;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ld9/h;->onErrorCallback()V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/google/gson/JsonObject;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Lcom/google/gson/JsonObject;
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
            "Lcom/google/gson/JsonObject;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    const-string p2, "selectTime"

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->b:Ljava/lang/String;

    const/4 v5, 0x0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->E(ZLjava/lang/String;JZ)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->b:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->E(ZLjava/lang/String;JZ)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createVideoStatusChangeModel(ZLjava/lang/String;Ljava/lang/String;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->d:Ld9/h;

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ld9/h;->onCallback()V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->a2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Z)Z

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->J:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, "2"

    const-string v1, "1"

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z1(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->setMatchType(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v2, :cond_2

    .line 15
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-virtual {v2, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->D(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->e:Z

    if-eqz p1, :cond_7

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->f:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->a:Z

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v1

    :goto_3
    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setMatchType(Ljava/lang/String;)V

    :cond_7
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
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$f;->onResponse(Lcom/google/gson/JsonObject;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
