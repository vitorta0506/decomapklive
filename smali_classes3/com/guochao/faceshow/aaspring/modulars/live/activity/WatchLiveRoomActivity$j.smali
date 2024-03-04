.class Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->p0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;->b:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->l:Ld9/g;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$j;->a:I

    invoke-interface {v0, v1}, Ld9/e;->onNetworkResume(I)V

    :cond_0
    return-void
.end method
