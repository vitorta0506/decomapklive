.class final Lcom/google/android/play/core/internal/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lb5/e;

.field final synthetic c:Lcom/google/android/play/core/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/v;Ljava/util/List;Lb5/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/u;->c:Lcom/google/android/play/core/internal/v;

    iput-object p2, p0, Lcom/google/android/play/core/internal/u;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/internal/u;->b:Lb5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/u;->c:Lcom/google/android/play/core/internal/v;

    invoke-static {v0}, Lcom/google/android/play/core/internal/v;->b(Lcom/google/android/play/core/internal/v;)Lcom/google/android/play/core/internal/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/u;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/x;->b(Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/internal/u;->c:Lcom/google/android/play/core/internal/v;

    iget-object v1, p0, Lcom/google/android/play/core/internal/u;->b:Lb5/e;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/v;->d(Lcom/google/android/play/core/internal/v;Lb5/e;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/u;->c:Lcom/google/android/play/core/internal/v;

    iget-object v1, p0, Lcom/google/android/play/core/internal/u;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/internal/u;->b:Lb5/e;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/internal/v;->c(Lcom/google/android/play/core/internal/v;Ljava/util/List;Lb5/e;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SplitCompat"

    const-string v2, "Error checking verified files."

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/u;->b:Lb5/e;

    const/16 v1, -0xb

    .line 5
    invoke-interface {v0, v1}, Lb5/e;->F(I)V

    return-void
.end method
