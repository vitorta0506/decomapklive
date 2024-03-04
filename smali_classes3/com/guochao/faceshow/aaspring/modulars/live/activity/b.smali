.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;ILcom/guochao/faceshow/aaspring/views/LiveRoomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->b:Ljava/util/List;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->c:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->d:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->b:Ljava/util/List;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->c:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/b;->d:Lcom/guochao/faceshow/aaspring/views/LiveRoomView;

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomEventBusHelper;->a(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Ljava/util/List;ILcom/guochao/faceshow/aaspring/views/LiveRoomView;)V

    return-void
.end method
