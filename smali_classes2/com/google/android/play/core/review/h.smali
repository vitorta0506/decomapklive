.class final Lcom/google/android/play/core/review/h;
.super Lcom/google/android/play/core/review/g;
.source "SourceFile"


# instance fields
.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/i;Ld5/o;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/g;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/review/g;-><init>(Lcom/google/android/play/core/review/i;Lcom/google/android/play/core/internal/g;Ld5/o;)V

    iput-object p3, p0, Lcom/google/android/play/core/review/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/review/g;->A0(Landroid/os/Bundle;)V

    const-string v0, "confirmation_intent"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "is_review_no_op"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/google/android/play/core/review/g;->b:Ld5/o;

    new-instance v2, Lcom/google/android/play/core/review/zza;

    .line 4
    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/review/zza;-><init>(Landroid/app/PendingIntent;Z)V

    .line 5
    invoke-virtual {v1, v2}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
