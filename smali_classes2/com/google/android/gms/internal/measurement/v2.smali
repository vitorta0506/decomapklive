.class final Lcom/google/android/gms/internal/measurement/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/w2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/n2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/n2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/u2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/u2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/q2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/q2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/p2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/p2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/a1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/a1;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v2, Lcom/google/android/gms/internal/measurement/t2;

    .line 2
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/t2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/a1;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/a1;->f(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/o2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/o2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v2;->a:Lcom/google/android/gms/internal/measurement/w2;

    new-instance v1, Lcom/google/android/gms/internal/measurement/s2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/s2;-><init>(Lcom/google/android/gms/internal/measurement/v2;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/w2;->F(Lcom/google/android/gms/internal/measurement/w2;Lcom/google/android/gms/internal/measurement/l2;)V

    return-void
.end method
