.class public final Lcom/google/android/gms/internal/recaptcha/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/h4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/h4<",
            "Lcom/google/android/gms/internal/recaptcha/v1;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/recaptcha/j1;

.field private final c:Lcom/google/android/gms/internal/recaptcha/w0;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/recaptcha/h4;Lcom/google/android/gms/internal/recaptcha/j1;Lcom/google/android/gms/internal/recaptcha/w0;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/h4<",
            "Lcom/google/android/gms/internal/recaptcha/v1;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/j1;",
            "Lcom/google/android/gms/internal/recaptcha/w0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/o0;->a:Lcom/google/android/gms/internal/recaptcha/h4;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/o0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/o0;->c:Lcom/google/android/gms/internal/recaptcha/w0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/o0;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/o0;

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/r0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/m4;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/recaptcha/s0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/m4;)Lcom/google/android/gms/internal/recaptcha/h4;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/k1;->a()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/w0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/w0;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/recaptcha/o0;-><init>(Lcom/google/android/gms/internal/recaptcha/h4;Lcom/google/android/gms/internal/recaptcha/j1;Lcom/google/android/gms/internal/recaptcha/w0;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/nj;)Lcom/google/android/gms/internal/recaptcha/y1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/o0;->c:Lcom/google/android/gms/internal/recaptcha/w0;

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/nj;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecaptchaLTManager"

    .line 2
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/recaptcha/w0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/nd;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/nj;->w()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/nj;->y()Ljava/util/List;

    move-result-object p2

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/nj;->z()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/nj;->v()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/o0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/j1;->zza()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/y1;->t()Lcom/google/android/gms/internal/recaptcha/x1;

    move-result-object v2

    .line 9
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/recaptcha/x1;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/x1;

    .line 10
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/recaptcha/x1;->o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/x1;

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/recaptcha/x1;->q(Lcom/google/android/gms/internal/recaptcha/ji;)Lcom/google/android/gms/internal/recaptcha/x1;

    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/recaptcha/x1;->p(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/x1;

    .line 13
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/recaptcha/x1;->s(Lcom/google/android/gms/internal/recaptcha/xj;)Lcom/google/android/gms/internal/recaptcha/x1;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/y1;

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/g1;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Lcom/google/android/gms/internal/recaptcha/y1;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 1
    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/recaptcha/o0;->a:Lcom/google/android/gms/internal/recaptcha/h4;

    new-instance v8, Lcom/google/android/gms/internal/recaptcha/n0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/recaptcha/n0;-><init>(Lcom/google/android/gms/internal/recaptcha/o0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 5
    invoke-virtual {v7, p1, p2}, Lcom/google/android/gms/internal/recaptcha/k5;->i(Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/m0;

    .line 6
    invoke-direct {p2, v6}, Lcom/google/android/gms/internal/recaptcha/m0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 8
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/dd;->j(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic d(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/recaptcha/v1;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/recaptcha/v1;->z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zzd()Lcom/google/android/gms/internal/recaptcha/zzjj;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p5}, Lcom/google/android/gms/internal/recaptcha/v1;->y()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/recaptcha/y1;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/y1;->w()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/recaptcha/o0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/recaptcha/j1;->zza()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v4

    .line 6
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/recaptcha/fj;->a(Lcom/google/android/gms/internal/recaptcha/ji;Lcom/google/android/gms/internal/recaptcha/ji;)Lcom/google/android/gms/internal/recaptcha/mf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/mf;->u()J

    move-result-wide v4

    const-wide/32 v6, 0x15180

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzjj;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zzd()Lcom/google/android/gms/internal/recaptcha/zzjj;

    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zzc()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/a0;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/p0;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/recaptcha/p0;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/nj;->u()Lcom/google/android/gms/internal/recaptcha/nj;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/a0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/recaptcha/dg;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ij;->t()Lcom/google/android/gms/internal/recaptcha/hj;

    move-result-object v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/pj;->t()Lcom/google/android/gms/internal/recaptcha/oj;

    move-result-object v4

    .line 12
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/recaptcha/oj;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/oj;

    .line 13
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/recaptcha/oj;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/oj;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/th;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 15
    :cond_2
    new-instance v5, Ljava/lang/String;

    .line 16
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/recaptcha/oj;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/oj;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/recaptcha/pj;

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/recaptcha/hj;->o(Lcom/google/android/gms/internal/recaptcha/pj;)Lcom/google/android/gms/internal/recaptcha/hj;

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/recaptcha/hj;->p(Z)Lcom/google/android/gms/internal/recaptcha/hj;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/ij;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/recaptcha/a0;->a(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/recaptcha/k0;

    .line 23
    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/k0;-><init>(Lcom/google/android/gms/internal/recaptcha/o0;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 25
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/recaptcha/dd;->j(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/recaptcha/l0;

    .line 26
    invoke-direct {p2, p3, p4, p5, v0}, Lcom/google/android/gms/internal/recaptcha/l0;-><init>(Lcom/google/android/gms/internal/recaptcha/g1;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/recaptcha/v1;Ljava/lang/String;)V

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/recaptcha/y6;->a(Lcom/google/android/gms/internal/recaptcha/p7;)Lcom/google/android/gms/internal/recaptcha/p7;

    move-result-object p2

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 29
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/dd;->j(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1

    .line 30
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/y1;->A()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzn(Ljava/util/Collection;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/y1;->x()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/recaptcha/b1;->c(Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/xj;)Lcom/google/android/gms/internal/recaptcha/b1;

    move-result-object p1

    .line 33
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/recaptcha/g1;->c(Lcom/google/android/gms/internal/recaptcha/b1;)V

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/zzjj;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 35
    invoke-static {p5}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method
