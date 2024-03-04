.class public final Lcom/google/android/play/core/assetpacks/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/r3;->a:Lcom/google/android/play/core/assetpacks/r3;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/internal/j1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
