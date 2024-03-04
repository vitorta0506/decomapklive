.class Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessage(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

.field final synthetic b:Ld9/e$a;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ld9/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->b:Ld9/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIVE_SEND_GIFT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->d2(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->b:Ld9/e$a;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, p2, v1}, Ld9/e$a;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment$o;->b:Ld9/e$a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ld9/e$a;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
