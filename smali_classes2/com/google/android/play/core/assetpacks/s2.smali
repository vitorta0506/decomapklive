.class public final Lcom/google/android/play/core/assetpacks/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/k1;

.field private final b:Lcom/google/android/play/core/internal/k1;

.field private final c:Lcom/google/android/play/core/internal/k1;

.field private final d:Lcom/google/android/play/core/internal/k1;

.field private final e:Lcom/google/android/play/core/internal/k1;

.field private final f:Lcom/google/android/play/core/internal/k1;

.field private final g:Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;Lcom/google/android/play/core/internal/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/s2;->a:Lcom/google/android/play/core/internal/k1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/s2;->b:Lcom/google/android/play/core/internal/k1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/s2;->c:Lcom/google/android/play/core/internal/k1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/s2;->d:Lcom/google/android/play/core/internal/k1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/s2;->e:Lcom/google/android/play/core/internal/k1;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/s2;->f:Lcom/google/android/play/core/internal/k1;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/s2;->g:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/s2;->a:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s2;->b:Lcom/google/android/play/core/internal/k1;

    invoke-static {v1}, Lcom/google/android/play/core/internal/i1;->a(Lcom/google/android/play/core/internal/k1;)Lcom/google/android/play/core/internal/g1;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/s2;->c:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/s2;->d:Lcom/google/android/play/core/internal/k1;

    invoke-static {v2}, Lcom/google/android/play/core/internal/i1;->a(Lcom/google/android/play/core/internal/k1;)Lcom/google/android/play/core/internal/g1;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/s2;->e:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/s2;->f:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lv4/b;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/s2;->g:Lcom/google/android/play/core/internal/k1;

    invoke-interface {v3}, Lcom/google/android/play/core/internal/k1;->zza()Ljava/lang/Object;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/r2;

    .line 2
    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    move-object v5, v1

    check-cast v5, Lcom/google/android/play/core/assetpacks/y1;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/j1;

    move-object v9, v3

    check-cast v9, Lcom/google/android/play/core/assetpacks/t2;

    move-object v2, v10

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/play/core/assetpacks/r2;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/y1;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/j1;Lv4/b;Lcom/google/android/play/core/assetpacks/t2;)V

    return-object v10
.end method
