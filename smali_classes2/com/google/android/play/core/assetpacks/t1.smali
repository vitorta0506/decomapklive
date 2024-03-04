.class public final Lcom/google/android/play/core/assetpacks/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/play/core/assetpacks/c;


# direct methods
.method static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/assetpacks/c;
    .locals 3

    const-class v0, Lcom/google/android/play/core/assetpacks/t1;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/assetpacks/t1;->a:Lcom/google/android/play/core/assetpacks/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/assetpacks/w0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/play/core/assetpacks/w0;-><init>(Lcom/google/android/play/core/assetpacks/v0;)V

    new-instance v2, Lcom/google/android/play/core/assetpacks/t3;

    invoke-static {p0}, Lcom/google/android/play/core/internal/y0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/t3;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/assetpacks/w0;->b(Lcom/google/android/play/core/assetpacks/t3;)Lcom/google/android/play/core/assetpacks/w0;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/w0;->a()Lcom/google/android/play/core/assetpacks/c;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/assetpacks/t1;->a:Lcom/google/android/play/core/assetpacks/c;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/assetpacks/t1;->a:Lcom/google/android/play/core/assetpacks/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
