.class final Lcom/google/android/gms/internal/measurement/d2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/w2;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d2;->g:Lcom/google/android/gms/internal/measurement/w2;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/d2;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/d2;->f:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/w2;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d2;->g:Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/e1;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/d2;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d2;->f:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v4

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v5

    .line 4
    invoke-static {v0}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v6

    const/4 v2, 0x5

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/e1;->logHealthData(ILjava/lang/String;Lh4/a;Lh4/a;Lh4/a;)V

    return-void
.end method
