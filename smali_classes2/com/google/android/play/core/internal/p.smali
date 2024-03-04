.class final Lcom/google/android/play/core/internal/p;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/play/core/internal/r;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/p;->b:Lcom/google/android/play/core/internal/r;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->b:Lcom/google/android/play/core/internal/r;

    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->p(Lcom/google/android/play/core/internal/s;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->b:Lcom/google/android/play/core/internal/r;

    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/s;->l(Lcom/google/android/play/core/internal/s;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/p;->b:Lcom/google/android/play/core/internal/r;

    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/s;->k(Lcom/google/android/play/core/internal/s;Z)V

    return-void
.end method
