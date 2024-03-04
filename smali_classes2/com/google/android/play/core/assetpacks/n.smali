.class final Lcom/google/android/play/core/assetpacks/n;
.super Lcom/google/android/play/core/assetpacks/k;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/n;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/assetpacks/k;->h(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n;->c:Lcom/google/android/play/core/assetpacks/s;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/play/core/assetpacks/s;->v(Lcom/google/android/play/core/assetpacks/s;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k;->a:Ld5/o;

    .line 3
    invoke-virtual {v0, p1}, Ld5/o;->e(Ljava/lang/Object;)Z

    return-void
.end method
