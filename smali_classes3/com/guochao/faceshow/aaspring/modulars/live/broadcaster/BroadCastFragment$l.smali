.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->getLikeNum()J

    move-result-wide v0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const-string v3, "tokens/live/newLive/getLiveInfo"

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->getLikeNum()J

    move-result-wide v0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "likeNum"

    invoke-virtual {v3, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "liveId"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "userId"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->A(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const/16 v1, 0x1388

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->f6:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 8
    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->G(ILcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    iput-object v0, v2, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->S5:Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    :cond_3
    :goto_0
    return-void
.end method
