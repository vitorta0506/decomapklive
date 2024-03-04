.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;->initAds()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment$b;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog;->setOnAdsClickListener(Lcom/guochao/faceshow/aaspring/views/AdsUnShowDialog$OnAdsClickListener;)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
