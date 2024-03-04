.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/SpannableStringBuilder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;->a:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;->a:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$f;->b:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->i(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :goto_0
    return-void
.end method
