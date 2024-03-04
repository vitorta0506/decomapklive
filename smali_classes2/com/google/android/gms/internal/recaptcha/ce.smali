.class final Lcom/google/android/gms/internal/recaptcha/ce;
.super Lcom/google/android/gms/internal/recaptcha/sc;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/sc<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile h:Lcom/google/android/gms/internal/recaptcha/md;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/md<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/cc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/cc<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/sc;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ae;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/ae;-><init>(Lcom/google/android/gms/internal/recaptcha/ce;Lcom/google/android/gms/internal/recaptcha/cc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/sc;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/be;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/be;-><init>(Lcom/google/android/gms/internal/recaptcha/ce;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    return-void
.end method

.method static S(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/ce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/android/gms/internal/recaptcha/ce<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ce;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/recaptcha/ce;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected final k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/recaptcha/cb;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cb;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/md;->i()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    return-void
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/md;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ce;->h:Lcom/google/android/gms/internal/recaptcha/md;

    return-void
.end method
