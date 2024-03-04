.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->a(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a03af

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v0

    invoke-virtual {v0}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v0}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getFullScreenLive()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 5
    iget v2, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->b(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;)Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    move-result-object v3

    iget v3, v3, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    if-ne v2, v3, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->c(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;Landroid/view/View;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;)V

    :cond_2
    :goto_0
    return-void
.end method
