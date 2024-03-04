.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->p(Ljava/io/File;Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;->a(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :cond_0
    return-void
.end method

.method public onError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$d;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$e;->a(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    :cond_0
    return-void
.end method
