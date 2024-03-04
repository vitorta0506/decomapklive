.class Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b$n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    const-string v0, "error "

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMUserInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    iput-object v3, v2, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->c:Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    .line 8
    invoke-interface {v4, v2}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/manager/im/d$b;

    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->b:Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a:Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$n$a;->a(Ljava/util/List;)V

    return-void
.end method
