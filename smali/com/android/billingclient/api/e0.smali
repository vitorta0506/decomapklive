.class final Lcom/android/billingclient/api/e0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/billingclient/api/k;

.field private b:Z

.field final synthetic c:Lcom/android/billingclient/api/f0;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/f0;Lcom/android/billingclient/api/k;Lcom/android/billingclient/api/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/e0;->c:Lcom/android/billingclient/api/f0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/e0;->a:Lcom/android/billingclient/api/k;

    return-void
.end method

.method static synthetic a(Lcom/android/billingclient/api/e0;)Lcom/android/billingclient/api/k;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/e0;->a:Lcom/android/billingclient/api/k;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/billingclient/api/e0;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/e0;->c:Lcom/android/billingclient/api/f0;

    invoke-static {v0}, Lcom/android/billingclient/api/f0;->a(Lcom/android/billingclient/api/f0;)Lcom/android/billingclient/api/e0;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/e0;->b:Z

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/a;->f(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/e;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/a;->h(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/billingclient/api/e0;->a:Lcom/android/billingclient/api/k;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/billingclient/api/k;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method
