.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    .line 3
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a01bb

    const-string v2, "field \'cardView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->cardView:Landroid/widget/FrameLayout;

    .line 5
    const-class v0, Lcom/rd/PageIndicatorView;

    const v1, 0x7f0a0852

    const-string v2, "field \'pageIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rd/PageIndicatorView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    const v0, 0x7f0a0185

    const-string v1, "method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;->c:Landroid/view/View;

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->cardView:Landroid/widget/FrameLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog;->pageIndicatorView:Lcom/rd/PageIndicatorView;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityDialog_ViewBinding;->c:Landroid/view/View;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
