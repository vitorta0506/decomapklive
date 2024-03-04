.class Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$c;
.super Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$c;->f:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Landroid/widget/TextView;Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$c;->c(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->appendSpanner(Landroid/content/Context;FLandroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const-string v0, "No."

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getRank()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getRank()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->getRank()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    :goto_0
    const-string p3, "100+"

    .line 5
    :goto_1
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->a()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->a()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;->a(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    :cond_2
    return-void
.end method
