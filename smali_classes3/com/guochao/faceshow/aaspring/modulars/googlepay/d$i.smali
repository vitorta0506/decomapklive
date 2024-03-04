.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->P(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/e;Ljava/util/List;)V
    .locals 4
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
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;->a:Z

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->H0()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 7
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i$a;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$i;Ljava/util/List;)V

    invoke-static {p2, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->w(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    :cond_2
    return-void
.end method
