.class final Lcom/google/android/gms/common/api/internal/u;
.super Lcom/google/android/gms/common/api/internal/d;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/gms/common/api/internal/d$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/d$a;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/u;->d:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/d;-><init>([Lcom/google/android/gms/common/Feature;ZI)V

    return-void
.end method


# virtual methods
.method protected final b(Lcom/google/android/gms/common/api/a$b;Lt4/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/u;->d:Lcom/google/android/gms/common/api/internal/d$a;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d$a;->f(Lcom/google/android/gms/common/api/internal/d$a;)Lv3/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lv3/i;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
