.class public final synthetic Lcom/google/android/play/core/assetpacks/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/c3;

.field public final synthetic b:Lcom/google/android/play/core/assetpacks/a3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/c3;Lcom/google/android/play/core/assetpacks/a3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/b3;->a:Lcom/google/android/play/core/assetpacks/c3;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/a3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/b3;->a:Lcom/google/android/play/core/assetpacks/c3;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/b3;->b:Lcom/google/android/play/core/assetpacks/a3;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/c3;->b(Lcom/google/android/play/core/assetpacks/a3;)V

    return-void
.end method
