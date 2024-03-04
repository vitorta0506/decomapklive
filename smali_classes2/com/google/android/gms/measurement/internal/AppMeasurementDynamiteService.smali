.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lcom/google/android/gms/internal/measurement/d1;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation


# instance fields
.field a:Lcom/google/android/gms/measurement/internal/n4;

.field private final b:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "listenerMap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/d1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    return-void
.end method

.method private final D0(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/k9;->J(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to perform action before initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->y()Lcom/google/android/gms/measurement/internal/x1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/x1;->l(Ljava/lang/String;J)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m6;->o(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public clearMeasurementEnabled(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/m6;->I(Ljava/lang/Boolean;)V

    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->y()Lcom/google/android/gms/measurement/internal/x1;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/x1;->m(Ljava/lang/String;J)V

    return-void
.end method

.method public generateEventId(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k9;->r0()J

    move-result-wide v0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/k9;->I(Lcom/google/android/gms/internal/measurement/h1;J)V

    return-void
.end method

.method public getAppInstanceId(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/j6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/j6;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/h1;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->V()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->D0(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/l9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/l9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->W()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->D0(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentScreenName(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->X()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->D0(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void
.end method

.method public getGmpAppId(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->O()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->O()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n4;->R()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google_app_id"

    .line 8
    invoke-static {v1, v3, v2}, Lp4/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    const-string v2, "getGoogleAppId failed with exception"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->D0(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/m6;->Q(Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p1

    const/16 v0, 0x19

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/k9;->H(Lcom/google/android/gms/internal/measurement/h1;I)V

    return-void
.end method

.method public getTestFlag(Lcom/google/android/gms/internal/measurement/h1;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->R()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/k9;->D(Lcom/google/android/gms/internal/measurement/h1;Z)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->T()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/k9;->H(Lcom/google/android/gms/internal/measurement/h1;I)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->S()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Landroid/os/Bundle;

    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "r"

    .line 8
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 9
    :try_start_0
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/measurement/h1;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string v0, "Error returning double value to wrapper"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->U()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/k9;->I(Lcom/google/android/gms/internal/measurement/h1;J)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->N()Lcom/google/android/gms/measurement/internal/k9;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/measurement/internal/k9;->J(Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;)V

    return-void
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/h1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/f8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/f8;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/h1;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    return-void
.end method

.method public initialize(Lh4/a;Lcom/google/android/gms/internal/measurement/zzcl;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    if-nez v0, :cond_0

    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/n4;->H(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/n4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Attempting to initialize multiple times"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/m9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/m9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/h1;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/measurement/internal/m6;->s(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/h1;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v4, "app"

    const-string v1, "_o"

    .line 6
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaw;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzau;

    invoke-direct {v3, p3}, Lcom/google/android/gms/measurement/internal/zzau;-><init>(Landroid/os/Bundle;)V

    move-object v1, v0

    move-object v2, p2

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/measurement/internal/f7;

    invoke-direct {p3, p0, p4, v0, p1}, Lcom/google/android/gms/measurement/internal/f7;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/h1;Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logHealthData(ILjava/lang/String;Lh4/a;Lh4/a;Lh4/a;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v6, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_0
    if-nez p4, :cond_1

    move-object v7, v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p4}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p3

    move-object v7, p3

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {p5}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    move-object v8, v0

    .line 5
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/j3;->F(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityCreated(Lh4/a;Landroid/os/Bundle;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 4
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lh4/a;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 4
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Lh4/a;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 4
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Lh4/a;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 4
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lh4/a;Lcom/google/android/gms/internal/measurement/h1;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    new-instance p4, Landroid/os/Bundle;

    .line 3
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 5
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-interface {p3, p1, p4}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p2, p4}, Lcom/google/android/gms/internal/measurement/h1;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p2

    const-string p3, "Error returning bundle value to wrapper"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/h3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityStarted(Lh4/a;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 4
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityStopped(Lh4/a;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/m6;->c:Lcom/google/android/gms/measurement/internal/l6;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/m6;->p()V

    .line 4
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/h1;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    const/4 p1, 0x0

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/h1;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/k1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/k1;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/t;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/o9;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/o9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/k1;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/k1;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/m6;->x(Lp4/t;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resetAnalyticsData(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/m6;->y(J)V

    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j3;->r()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "Conditional user property must not be null"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m6;->E(Landroid/os/Bundle;J)V

    return-void
.end method

.method public setConsent(Landroid/os/Bundle;J)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/m5;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Lcom/google/android/gms/measurement/internal/m6;Landroid/os/Bundle;J)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/l4;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConsentThirdParty(Landroid/os/Bundle;J)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    const/16 v1, -0x14

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/google/android/gms/measurement/internal/m6;->F(Landroid/os/Bundle;IJ)V

    return-void
.end method

.method public setCurrentScreen(Lh4/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/n4;->K()Lcom/google/android/gms/measurement/internal/y6;

    move-result-object p4

    .line 3
    invoke-static {p1}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/y6;->D(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u3;->i()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/i6;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/measurement/internal/i6;-><init>(Lcom/google/android/gms/measurement/internal/m6;Z)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    .line 5
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/n5;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/measurement/internal/n5;-><init>(Lcom/google/android/gms/measurement/internal/m6;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEventInterceptor(Lcom/google/android/gms/internal/measurement/k1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/n9;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/n9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/k1;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l4;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/m6;->H(Lp4/s;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/measurement/internal/e9;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/e9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/measurement/internal/n9;)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/m1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/m6;->I(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/r5;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/r5;-><init>(Lcom/google/android/gms/measurement/internal/m6;J)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->b()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j3;->w()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p1

    const-string p2, "User ID must be non-empty or null"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/h3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/g5;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n4;->a()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/o5;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/measurement/internal/o5;-><init>(Lcom/google/android/gms/measurement/internal/m6;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/l4;->z(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v3, "_id"

    move-object v4, p1

    move-wide v6, p2

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/m6;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lh4/a;ZJ)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lh4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    .line 2
    invoke-static {p3}, Lh4/b;->D0(Lh4/a;)Ljava/lang/Object;

    move-result-object v3

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/m6;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/k1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/k1;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/t;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/o9;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/o9;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/k1;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/n4;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/n4;->I()Lcom/google/android/gms/measurement/internal/m6;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/m6;->N(Lp4/t;)V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
