.class Lcom/google/android/play/core/review/g;
.super Lcom/google/android/play/core/internal/e;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/play/core/internal/g;

.field final b:Ld5/o;

.field final synthetic c:Lcom/google/android/play/core/review/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/i;Lcom/google/android/play/core/internal/g;Ld5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/review/g;->c:Lcom/google/android/play/core/review/i;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/e;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/review/g;->a:Lcom/google/android/play/core/internal/g;

    iput-object p3, p0, Lcom/google/android/play/core/review/g;->b:Ld5/o;

    return-void
.end method


# virtual methods
.method public A0(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/g;->c:Lcom/google/android/play/core/review/i;

    iget-object p1, p1, Lcom/google/android/play/core/review/i;->a:Lcom/google/android/play/core/internal/s;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/review/g;->b:Ld5/o;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/internal/s;->s(Ld5/o;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/review/g;->a:Lcom/google/android/play/core/internal/g;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    .line 2
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
