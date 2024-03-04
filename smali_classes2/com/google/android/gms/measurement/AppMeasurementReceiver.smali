.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroidx/legacy/content/WakefulBroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lp4/i;


# instance fields
.field private a:Lp4/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/legacy/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p1, p2}, Landroidx/legacy/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lp4/j;

    if-nez v0, :cond_0

    new-instance v0, Lp4/j;

    invoke-direct {v0, p0}, Lp4/j;-><init>(Lp4/i;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lp4/j;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lp4/j;

    .line 2
    invoke-virtual {v0, p1, p2}, Lp4/j;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
