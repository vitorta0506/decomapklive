.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->n5(Z)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->M4(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->h6:Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
