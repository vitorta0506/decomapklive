.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

.field public c:Landroid/widget/TextView;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->d:Ljava/util/Map;

    const-string v0, "zune\uff1a"

    const-string v1, "\u521b\u5efa\u4e86GiftObserver"

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;Landroid/widget/TextView;Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/widget/TextView;",
            "Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;",
            ")V"
        }
    .end annotation
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->b:Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->b(Ljava/lang/Object;Landroid/widget/TextView;Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;)V

    return-void
.end method

.method public setListener(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$d;->e:Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$g;

    return-void
.end method
