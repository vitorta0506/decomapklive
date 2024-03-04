.class Lcom/guochao/faceshow/aaspring/manager/im/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/im/b;->E0()V
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
        "Lcom/tencent/imsdk/v2/V2TIMConversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/im/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

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
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v4}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    return-void

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->n()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    goto :goto_2

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b$a;Ljava/util/List;)V

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->y0(Ljava/util/List;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    :goto_2
    return-void

    .line 16
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 17
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a:Lcom/guochao/faceshow/aaspring/manager/im/b;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 2
    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b$a;->a(Ljava/util/List;)V

    return-void
.end method
