.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->K(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/android/billingclient/api/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/e;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/PurchaseHistoryRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryPurchaseHistoryAsync = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->t(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 7
    invoke-virtual {v2}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->c()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;Ljava/util/List;Z)V

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$d;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->r(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$y;)V

    return-void
.end method
