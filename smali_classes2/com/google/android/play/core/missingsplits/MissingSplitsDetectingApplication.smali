.class public Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onCreate()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->a:Z

    .line 2
    invoke-static {p0}, Ly4/b;->a(Landroid/content/Context;)Ly4/a;

    move-result-object v0

    invoke-interface {v0}, Ly4/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/play/core/missingsplits/MissingSplitsDetectingApplication;->a()V

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The onCreate method must be invoked at most once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
