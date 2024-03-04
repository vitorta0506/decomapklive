.class public final Lcom/google/android/play/core/assetpacks/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/internal/k1;


# instance fields
.field private final a:Lcom/google/android/play/core/internal/k1;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/internal/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/p0;->a:Lcom/google/android/play/core/internal/k1;

    invoke-static {v0}, Lcom/google/android/play/core/internal/i1;->a(Lcom/google/android/play/core/internal/k1;)Lcom/google/android/play/core/internal/g1;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/o0;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/o0;-><init>(Lcom/google/android/play/core/internal/g1;)V

    return-object v1
.end method
