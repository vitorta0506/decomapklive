.class public final synthetic Lcom/google/android/play/core/assetpacks/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/y;

.field public final synthetic b:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/x;->a:Lcom/google/android/play/core/assetpacks/y;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/x;->b:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/x;->a:Lcom/google/android/play/core/assetpacks/y;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/x;->b:Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Lx4/d;->d(Ljava/lang/Object;)V

    return-void
.end method
