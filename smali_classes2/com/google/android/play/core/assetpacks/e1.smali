.class public final Lcom/google/android/play/core/assetpacks/e1;
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

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e1;->a:Lcom/google/android/play/core/internal/k1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e1;->a:Lcom/google/android/play/core/internal/k1;

    check-cast v0, Lcom/google/android/play/core/assetpacks/y3;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/y3;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/assetpacks/d1;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/play/core/assetpacks/d1;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
