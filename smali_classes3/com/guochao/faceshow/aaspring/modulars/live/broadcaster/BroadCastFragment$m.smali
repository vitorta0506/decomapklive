.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->n5(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->a:Ljava/util/Map;

    const-string v1, "userId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->a:Ljava/util/Map;

    const-string v2, "liveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->a:Ljava/util/Map;

    const-string v3, "content"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->a:Ljava/util/Map;

    const-string v4, "startLiveTime"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 6
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v5

    invoke-interface {v5}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getLiveStartTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment$m;->b:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
