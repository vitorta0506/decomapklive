.class public final Lcom/google/android/play/core/assetpacks/z2;
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

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z2;->a:Lcom/google/android/play/core/internal/k1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/z2;->b:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z2;->a:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z2;->b:Lcom/google/android/play/core/internal/k1;

    invoke-static {v1}, Lcom/google/android/play/core/internal/i1;->a(Lcom/google/android/play/core/internal/k1;)Lcom/google/android/play/core/internal/g1;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/y2;

    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/y2;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/internal/g1;)V

    return-object v2
.end method
