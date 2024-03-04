.class public final Lcom/google/android/play/core/assetpacks/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/play/core/assetpacks/t3;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/v0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/assetpacks/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/w0;->a:Lcom/google/android/play/core/assetpacks/t3;

    const-class v1, Lcom/google/android/play/core/assetpacks/t3;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/j1;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/y0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/w0;->a:Lcom/google/android/play/core/assetpacks/t3;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/y0;-><init>(Lcom/google/android/play/core/assetpacks/t3;Lcom/google/android/play/core/assetpacks/x0;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/play/core/assetpacks/t3;)Lcom/google/android/play/core/assetpacks/w0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/w0;->a:Lcom/google/android/play/core/assetpacks/t3;

    return-object p0
.end method
