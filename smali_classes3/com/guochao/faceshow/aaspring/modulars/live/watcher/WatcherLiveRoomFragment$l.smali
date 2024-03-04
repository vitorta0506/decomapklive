.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->f3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->T4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->U4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->V4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->X4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->l:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "LIVE_LIKE"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->sendLiveMessageCmd(Ljava/lang/String;Ld9/e$a;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->j2()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->h6:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->M4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->M4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$l;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->K4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;Z)V

    :cond_2
    return-void
.end method
