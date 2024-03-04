.class abstract Lcom/google/android/gms/internal/recaptcha/vb;
.super Lcom/google/android/gms/internal/recaptcha/bc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/bc<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final n:Ljava/util/logging/Logger;


# instance fields
.field private l:Lcom/google/android/gms/internal/recaptcha/zzke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzke<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/recaptcha/vb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/vb;->n:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzke;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzke<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/recaptcha/bc;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/recaptcha/vb;->m:Z

    return-void
.end method

.method private final a0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/vb;->m:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->J(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/bc;->W()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/vb;->d0(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/vb;->b0(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/vb;->b0(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static b0(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_0

    :cond_0
    const-string v0, "Input Future failed with Error"

    :goto_0
    move-object v5, v0

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/vb;->n:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    .line 2
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static d0(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic e0(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)Lcom/google/android/gms/internal/recaptcha/zzke;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    return-object p1
.end method

.method static synthetic g0(Lcom/google/android/gms/internal/recaptcha/vb;ILjava/util/concurrent/Future;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/dd;->l(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/vb;->a0(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/vb;->a0(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic h0(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/bc;->T()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Less than 0 remaining futures"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/z7;->j(ZLjava/lang/Object;)V

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/bc;->X()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/vb;->i0()V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/vb;->Z(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method final Y(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cb;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cb;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/recaptcha/vb;->d0(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method Z(I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    return-void
.end method

.method abstract i0()V
.end method

.method final j0()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/vb;->i0()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/vb;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zze()Lcom/google/android/gms/internal/recaptcha/j9;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/nd;

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lcom/google/android/gms/internal/recaptcha/tb;

    .line 5
    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gms/internal/recaptcha/tb;-><init>(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/nd;I)V

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/kc;->a:Lcom/google/android/gms/internal/recaptcha/kc;

    .line 7
    invoke-interface {v2, v4, v1}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v3

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ub;

    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/recaptcha/ub;-><init>(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzke;->zze()Lcom/google/android/gms/internal/recaptcha/j9;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/nd;

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/recaptcha/kc;->a:Lcom/google/android/gms/internal/recaptcha/kc;

    .line 11
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/recaptcha/nd;->F(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected final k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/vb;->l:Lcom/google/android/gms/internal/recaptcha/zzke;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/recaptcha/vb;->Z(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cb;->isCancelled()Z

    move-result v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/cb;->K()Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzke;->zze()Lcom/google/android/gms/internal/recaptcha/j9;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 5
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method
