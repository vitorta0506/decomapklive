.class final Lcom/google/android/play/core/assetpacks/g;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ld5/o;

.field final synthetic e:I

.field final synthetic f:Lcom/google/android/play/core/assetpacks/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;ILjava/lang/String;Ld5/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g;->f:Lcom/google/android/play/core/assetpacks/s;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/g;->b:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/g;->d:Ld5/o;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/g;->e:I

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/h;-><init>(Ld5/o;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g;->f:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/s;->r(Lcom/google/android/play/core/assetpacks/s;)Lcom/google/android/play/core/internal/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/s;->e()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/w1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/g;->f:Lcom/google/android/play/core/assetpacks/s;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/s;->t(Lcom/google/android/play/core/assetpacks/s;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/g;->b:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/g;->c:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/s;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->n()Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/q;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/g;->f:Lcom/google/android/play/core/assetpacks/s;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/g;->d:Ld5/o;

    iget v7, p0, Lcom/google/android/play/core/assetpacks/g;->b:I

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/g;->c:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/play/core/assetpacks/g;->e:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/q;-><init>(Lcom/google/android/play/core/assetpacks/s;Ld5/o;ILjava/lang/String;I)V

    .line 4
    invoke-interface {v0, v1, v2, v3, v10}, Lcom/google/android/play/core/internal/w1;->X(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/y1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-static {}, Lcom/google/android/play/core/assetpacks/s;->q()Lcom/google/android/play/core/internal/g;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyModuleCompleted"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/g;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
