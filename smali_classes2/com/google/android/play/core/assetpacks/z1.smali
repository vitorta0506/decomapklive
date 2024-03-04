.class public final Lcom/google/android/play/core/assetpacks/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/k1;

.field private final b:Lcom/google/android/play/core/internal/k1;

.field private final c:Lcom/google/android/play/core/internal/k1;

.field private final d:Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/internal/k1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/internal/k1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/z1;->c:Lcom/google/android/play/core/internal/k1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/z1;->d:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z1;->a:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z1;->b:Lcom/google/android/play/core/internal/k1;

    invoke-static {v1}, Lcom/google/android/play/core/internal/i1;->a(Lcom/google/android/play/core/internal/k1;)Lcom/google/android/play/core/internal/g1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/z1;->c:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/z1;->d:Lcom/google/android/play/core/internal/k1;

    invoke-static {v3}, Lcom/google/android/play/core/internal/i1;->a(Lcom/google/android/play/core/internal/k1;)Lcom/google/android/play/core/internal/g1;

    move-result-object v3

    .line 2
    new-instance v4, Lcom/google/android/play/core/assetpacks/y1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    check-cast v2, Lcom/google/android/play/core/assetpacks/j1;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/assetpacks/y1;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/j1;Lcom/google/android/play/core/internal/g1;)V

    return-object v4
.end method
