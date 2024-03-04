.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)I

    move-result v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/rd/PageIndicatorView;->setSelected(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->V1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
