.class Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "reason"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "HomeReceiver"

    .line 5
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->Q0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->Z0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->S0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;Z)Z

    goto :goto_0

    :cond_1
    const-string p2, "recentapps"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "lock"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "assist"

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method
