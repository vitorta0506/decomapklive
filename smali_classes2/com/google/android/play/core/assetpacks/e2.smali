.class public final synthetic Lcom/google/android/play/core/assetpacks/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/g2;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/g2;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e2;->a:Lcom/google/android/play/core/assetpacks/g2;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/e2;->b:I

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/e2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e2;->a:Lcom/google/android/play/core/assetpacks/g2;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/e2;->b:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/g2;->j(ILjava/lang/String;)V

    return-void
.end method
