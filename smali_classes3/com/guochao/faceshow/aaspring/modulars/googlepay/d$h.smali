.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->D(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const p3, 0x7f1203d1

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->D(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_1
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->c:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

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
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->b:Ljava/lang/String;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
