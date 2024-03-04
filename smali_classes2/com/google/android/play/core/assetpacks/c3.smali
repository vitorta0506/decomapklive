.class final Lcom/google/android/play/core/assetpacks/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/e0;

.field private final b:Lcom/google/android/play/core/internal/g1;

.field private final c:Lcom/google/android/play/core/assetpacks/y1;

.field private final d:Lcom/google/android/play/core/internal/g1;

.field private final e:Lcom/google/android/play/core/assetpacks/j1;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/y1;Lcom/google/android/play/core/internal/g1;Lcom/google/android/play/core/assetpacks/j1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/c3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/c3;->b:Lcom/google/android/play/core/internal/g1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/c3;->c:Lcom/google/android/play/core/assetpacks/y1;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/c3;->d:Lcom/google/android/play/core/internal/g1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/c3;->e:Lcom/google/android/play/core/assetpacks/j1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/a3;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/a3;->c:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/a3;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/c3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    iget v6, p1, Lcom/google/android/play/core/assetpacks/a3;->d:I

    iget-wide v7, p1, Lcom/google/android/play/core/assetpacks/a3;->e:J

    .line 4
    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/google/android/play/core/assetpacks/e0;->u(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c3;->d:Lcom/google/android/play/core/internal/g1;

    .line 8
    invoke-interface {v0}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/b3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/b3;-><init>(Lcom/google/android/play/core/assetpacks/c3;Lcom/google/android/play/core/assetpacks/a3;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c3;->c:Lcom/google/android/play/core/assetpacks/y1;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/a3;->d:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/a3;->e:J

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/y1;->i(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c3;->e:Lcom/google/android/play/core/assetpacks/j1;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/j1;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c3;->b:Lcom/google/android/play/core/internal/g1;

    .line 12
    invoke-interface {v0}, Lcom/google/android/play/core/internal/g1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/c4;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/a2;->a:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/c4;->a(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_0
    new-instance v5, Lcom/google/android/play/core/assetpacks/f1;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    aput-object v7, v6, v3

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    const-string v0, "Cannot promote pack %s from %s to %s"

    .line 15
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/a2;->a:I

    invoke-direct {v5, v0, p1}, Lcom/google/android/play/core/assetpacks/f1;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 16
    :cond_1
    new-instance v1, Lcom/google/android/play/core/assetpacks/f1;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Cannot find pack files to promote for pack %s at %s"

    .line 18
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/a2;->a:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/f1;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/a3;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/c3;->a:Lcom/google/android/play/core/assetpacks/e0;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/a2;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/a3;->d:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/a3;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/e0;->b(Ljava/lang/String;IJ)V

    return-void
.end method
