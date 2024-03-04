.class public Lo4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/w2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/w2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
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

    iget-object v0, p0, Lo4/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/w2;->K(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lo4/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/measurement/w2;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lo4/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->f(Z)V

    return-void
.end method

.method public registerOnMeasurementEventListener(Lo4/a$a;)V
    .locals 1
    .param p1    # Lo4/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lo4/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->b(Lp4/t;)V

    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lo4/a$a;)V
    .locals 1
    .param p1    # Lo4/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lo4/a;->a:Lcom/google/android/gms/internal/measurement/w2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/w2;->i(Lp4/t;)V

    return-void
.end method
