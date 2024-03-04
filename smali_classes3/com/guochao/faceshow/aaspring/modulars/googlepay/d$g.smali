.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->J0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->x(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "You have opened"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "pay"

    const-string v0, "SubPurchase"

    const-string v1, ""

    .line 3
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f120a11

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f1203d2

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 8
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onSubscribeFailed()V

    goto :goto_0

    :cond_1
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
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "1"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->x(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    const-string p1, "pay"

    const-string p2, "SubPurchase"

    const-string v0, ""

    .line 4
    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f120a11

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->C(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;

    .line 8
    invoke-interface {p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;->onSubscribeSuccess()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-direct {p2, v0, p1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$g;->onFailure(Lg7/a;)V

    :cond_1
    return-void
.end method
