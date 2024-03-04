.class final Lt3/g;
.super Lt3/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lt3/h;


# direct methods
.method constructor <init>(Lt3/h;)V
    .locals 0

    iput-object p1, p0, Lt3/g;->a:Lt3/h;

    invoke-direct {p0}, Lt3/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final y0(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lt3/g;->a:Lt3/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f(Lcom/google/android/gms/common/api/i;)V

    return-void
.end method
