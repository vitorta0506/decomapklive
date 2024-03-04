.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a010c

    const-string v2, "field \'banner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Lcom/rd/PageIndicatorView;

    const v1, 0x7f0a0852

    const-string v2, "field \'pageIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rd/PageIndicatorView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->banner:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
