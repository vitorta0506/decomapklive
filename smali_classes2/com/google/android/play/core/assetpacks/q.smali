.class final Lcom/google/android/play/core/assetpacks/q;
.super Lcom/google/android/play/core/assetpacks/k;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final synthetic f:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q;->f:Lcom/google/android/play/core/assetpacks/s;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/q;->c:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/q;->d:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/play/core/assetpacks/q;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q;->f:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k;->a:Ld5/o;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/s;->s(Ld5/o;)V

    const-string v0, "error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget p1, p0, Lcom/google/android/play/core/assetpacks/q;->e:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q;->f:Lcom/google/android/play/core/assetpacks/s;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/q;->c:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q;->d:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    .line 4
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/play/core/assetpacks/s;->x(Lcom/google/android/play/core/assetpacks/s;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
