.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->F0(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lcom/android/billingclient/api/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->a:I

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->f(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BillingResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f1203d1

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u5355\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->b()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "g_pay_error_4000"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->a:I

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->b:Ljava/util/List;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->o(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    const-string v1, "-1000"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->e:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "g_pay_error_4000"

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/billingclient/api/e;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$u;->a(Lcom/android/billingclient/api/e;)V

    return-void
.end method
