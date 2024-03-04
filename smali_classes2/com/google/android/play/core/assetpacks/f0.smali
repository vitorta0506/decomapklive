.class public final Lcom/google/android/play/core/assetpacks/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/k1;

.field private final b:Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f0;->a:Lcom/google/android/play/core/internal/k1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/f0;->b:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f0;->a:Lcom/google/android/play/core/internal/k1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/y3;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/y3;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f0;->b:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/e0;

    check-cast v1, Lcom/google/android/play/core/assetpacks/v2;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/e0;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/v2;)V

    return-object v2
.end method
