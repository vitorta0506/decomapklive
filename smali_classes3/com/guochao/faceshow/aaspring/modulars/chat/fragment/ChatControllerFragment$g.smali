.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->X1(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)V
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
        "Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMFriendCheckResult;->getResultType()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->a(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->b(ZLcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->a(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->b(ZLcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->a(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$j;->b(ZLcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$g;->a(Ljava/util/List;)V

    return-void
.end method
