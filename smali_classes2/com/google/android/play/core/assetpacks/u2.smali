.class public final Lcom/google/android/play/core/assetpacks/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/k1;

.field private final b:Lcom/google/android/play/core/internal/k1;

.field private final c:Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/internal/k1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/u2;->b:Lcom/google/android/play/core/internal/k1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/u2;->c:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/u2;->a:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/u2;->b:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/u2;->c:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/b;

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/t2;

    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    check-cast v1, Lcom/google/android/play/core/assetpacks/v2;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/t2;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/assetpacks/v2;Lv4/b;)V

    return-object v3
.end method
