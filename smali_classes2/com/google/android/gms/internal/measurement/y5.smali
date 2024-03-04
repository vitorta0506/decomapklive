.class final Lcom/google/android/gms/internal/measurement/y5;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/z5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/z5;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/y5;->a:Lcom/google/android/gms/internal/measurement/z5;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/y5;->a:Lcom/google/android/gms/internal/measurement/z5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z5;->f()V

    return-void
.end method
