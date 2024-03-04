.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/util/List<",
        "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->b:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->b:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SubStateBean;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SubStateBean;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->e()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->u(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;

    if-eqz p2, :cond_4

    .line 10
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;->a(Ljava/util/Map;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->v(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;)V

    :cond_4
    return-void
.end method
