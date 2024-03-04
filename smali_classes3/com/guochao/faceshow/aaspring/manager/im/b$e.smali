.class Lcom/guochao/faceshow/aaspring/manager/im/b$e;
.super Lcom/guochao/faceshow/aaspring/manager/im/b$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->o0(JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/im/b$o;-><init>(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/manager/im/b$e;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->d(JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    return-void
.end method

.method private synthetic d(JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V
    .locals 6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    add-int/lit8 v5, p5, 0x1

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->N(Lcom/guochao/faceshow/aaspring/manager/im/b;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/List;ZI)V
    .locals 8
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;ZI)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->d:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    move-wide v2, p1

    move-object v5, p3

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/manager/im/b;->N(Lcom/guochao/faceshow/aaspring/manager/im/b;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, 0x3

    if-ge p5, p4, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p4

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    new-instance v7, Lcom/guochao/faceshow/aaspring/manager/im/c;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/manager/im/c;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b$e;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {p4, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$e;->c:Lcom/tencent/imsdk/v2/V2TIMValueCallback;

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-interface {p1, p3}, Lcom/tencent/imsdk/v2/V2TIMValueCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
