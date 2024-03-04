.class public Lcom/google/android/gms/common/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/t;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/u;->b:Lcom/google/android/gms/common/internal/u;

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/s;->b(Landroid/content/Context;Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/t;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/t;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/internal/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ly3/d;

    invoke-direct {v0, p0, p1}, Ly3/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/internal/u;)V

    return-object v0
.end method
