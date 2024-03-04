.class Lcom/guochao/faceshow/aaspring/manager/im/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->y0(Ljava/util/List;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
        "Ljava/util/List<",
        "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Lcom/guochao/faceshow/aaspring/manager/im/d$b;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->c:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b$n;-><init>()V

    .line 3
    iput-object v0, v1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->c:Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->c:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->a:Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$d;->a(Ljava/util/List;)V

    return-void
.end method
