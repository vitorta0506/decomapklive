.class Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/danmu/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDanmuShowEnd(Lcom/guochao/faceshow/aaspring/danmu/c;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mComments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mComments:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->mComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->addDamus(Ljava/util/List;)V

    :cond_0
    return-void
.end method
