.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b<",
        "Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->b(Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->s4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    move-result-object v0

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->isErrorPush:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->getLikeNum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "likeNum"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->t4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "indexs"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLivePushIP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pushIp"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->u4(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;)J

    return-void
.end method
