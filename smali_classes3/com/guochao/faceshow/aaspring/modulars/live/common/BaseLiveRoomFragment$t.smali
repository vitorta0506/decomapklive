.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->C2(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

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

    return-void
.end method

.method public onResponse(Lcom/google/gson/JsonObject;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
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

    if-eqz p1, :cond_2

    const-string p2, "selectTime"

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide p1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-wide p1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->v5:J

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->m()Lcom/guochao/faceshow/aaspring/modulars/live/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/a;->j(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->X4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveLinkMicPlayAdapter;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->c(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;J)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Y4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LivePlayMaskAdapter;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->c(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;J)V

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->Z4:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveVideoAudioMaskAdapter;

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v1, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/BaseLiveAdapter;->c(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;J)V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->createStartMergeModel(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$t;->onResponse(Lcom/google/gson/JsonObject;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
