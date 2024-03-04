.class final Lcom/google/android/gms/internal/measurement/k2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Z

.field final synthetic i:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/w2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k2;->i:Lcom/google/android/gms/internal/measurement/w2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k2;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/k2;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/k2;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/k2;->h:Z

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/w2;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k2;->i:Lcom/google/android/gms/internal/measurement/w2;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/e1;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k2;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/k2;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k2;->g:Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/k2;->h:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/l2;->a:J

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/e1;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lh4/a;ZJ)V

    return-void
.end method
