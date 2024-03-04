.class final Lt3/j;
.super Lt3/k;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lt3/k;-><init>(Lcom/google/android/gms/common/api/d;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/i;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic l(Lcom/google/android/gms/common/api/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lt3/f;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->A()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lt3/r;

    new-instance v1, Lt3/i;

    invoke-direct {v1, p0}, Lt3/i;-><init>(Lt3/j;)V

    .line 3
    invoke-virtual {p1}, Lt3/f;->j0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lt3/r;->E0(Lt3/q;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
