.class public final synthetic Lcom/google/android/play/core/assetpacks/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/g2;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/g2;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/g2;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/f2;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/g2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f2;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/g2;->i(Landroid/content/Intent;)V

    return-void
.end method
