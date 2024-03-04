.class public final synthetic Lcom/android/billingclient/api/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/j;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/n0;->a:Lcom/android/billingclient/api/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/n0;->a:Lcom/android/billingclient/api/j;

    .line 1
    sget-object v1, Lcom/android/billingclient/api/w;->r:Lcom/android/billingclient/api/e;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v2

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    return-void
.end method
