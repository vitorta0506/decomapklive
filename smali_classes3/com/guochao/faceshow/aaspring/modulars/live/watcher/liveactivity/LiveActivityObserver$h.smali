.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "zune\uff1a"

    const-string v1, "\u521b\u5efa\u4e86QueueHelper"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->c:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/text/SpannableStringBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b:Ljava/util/List;

    return-object v0
.end method

.method public d(Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->c:Lcom/guochao/faceshow/views/ObservableHorizontalScrollView;

    return-void
.end method

.method public e(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->a:Landroid/widget/TextView;

    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveActivityObserver$h;->b:Ljava/util/List;

    return-void
.end method
