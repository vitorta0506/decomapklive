.class final Lcom/android/billingclient/api/zzy;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/h;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/billingclient/api/e;->c()Lcom/android/billingclient/api/e$a;

    move-result-object v0

    .line 1
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/e$a;->c(I)Lcom/android/billingclient/api/e$a;

    const-string p1, "BillingClient"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/a;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/e$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/e$a;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/e$a;->a()Lcom/android/billingclient/api/e;

    move-result-object p1

    iget-object p2, p0, Lcom/android/billingclient/api/zzy;->a:Lcom/android/billingclient/api/h;

    .line 4
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/h;->a(Lcom/android/billingclient/api/e;)V

    return-void
.end method
