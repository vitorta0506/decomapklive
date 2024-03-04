.class final Lcom/android/billingclient/api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/billingclient/api/j;

.field final synthetic c:Lcom/android/billingclient/api/b;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Lcom/android/billingclient/api/j;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/n;->c:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lcom/android/billingclient/api/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/n;->b:Lcom/android/billingclient/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/n;->c:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Lcom/android/billingclient/api/n;->a:Ljava/lang/String;

    .line 1
    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/billingclient/api/n;->b:Lcom/android/billingclient/api/j;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->a()Lcom/android/billingclient/api/e;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v1, v2, v0}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/n;->b:Lcom/android/billingclient/api/j;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$a;->a()Lcom/android/billingclient/api/e;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzp;->zzg()Lcom/google/android/gms/internal/play_billing/zzp;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/e;Ljava/util/List;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
