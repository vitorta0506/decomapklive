.class public final synthetic Lcom/google/android/play/core/assetpacks/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/x1;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/assetpacks/y1;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/y1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/assetpacks/y1;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/m1;->a:Lcom/google/android/play/core/assetpacks/y1;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/m1;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/y1;->e(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
