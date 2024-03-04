.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->o(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->j(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->h(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->f(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;J)J

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView$e;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityView;->A()V

    return-void
.end method
