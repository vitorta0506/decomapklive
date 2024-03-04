.class Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->n(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Ljava/util/List;I)V

    return-void

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->D(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f1203d1

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->D(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->l(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)V

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    const-string v2, "\u67e5\u8be2\u5546\u54c1\u4e3a\u7a7a\uff0c\u65e0\u6cd5\u5b8c\u6210\u8d2d\u4e70"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t$a;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$t;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->m(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "g_pay_error_4000"

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
