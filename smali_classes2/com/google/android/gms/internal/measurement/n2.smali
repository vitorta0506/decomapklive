.class final Lcom/google/android/gms/internal/measurement/n2;
.super Lcom/google/android/gms/internal/measurement/l2;
.source "SourceFile"


# instance fields
.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/v2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/n2;->g:Lcom/google/android/gms/internal/measurement/v2;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/n2;->e:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/n2;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/l2;-><init>(Lcom/google/android/gms/internal/measurement/w2;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n2;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n2;->e:Landroid/os/Bundle;

    const-string v2, "com.google.app_measurement.screen_service"

    .line 2
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n2;->e:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 5
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/n2;->g:Lcom/google/android/gms/internal/measurement/v2;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/w2;->t(Lcom/google/android/gms/internal/measurement/w2;)Lcom/google/android/gms/internal/measurement/e1;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/e1;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/n2;->f:Landroid/app/Activity;

    .line 7
    invoke-static {v2}, Lh4/b;->E0(Ljava/lang/Object;)Lh4/a;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/l2;->b:J

    .line 8
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/measurement/e1;->onActivityCreated(Lh4/a;Landroid/os/Bundle;J)V

    return-void
.end method
