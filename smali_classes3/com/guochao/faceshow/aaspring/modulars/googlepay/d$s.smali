.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

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
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/e;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkHistoryPurchase billResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", purchase = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->j(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->H(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->h(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->googlePayCertificate(ILjava/lang/String;Lcom/android/billingclient/api/Purchase;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$s;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->k(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
