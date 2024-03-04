.class final Lcom/google/android/gms/internal/recaptcha/kh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/uh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/recaptcha/uh<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/gh;

.field private final b:Lcom/google/android/gms/internal/recaptcha/ki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/recaptcha/qf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/gh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;",
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/recaptcha/qf;->h(Lcom/google/android/gms/internal/recaptcha/gh;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/kh;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    return-void
.end method

.method static i(Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/kh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/recaptcha/ki<",
            "**>;",
            "Lcom/google/android/gms/internal/recaptcha/qf<",
            "*>;",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/kh<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/kh;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/kh;-><init>(Lcom/google/android/gms/internal/recaptcha/ki;Lcom/google/android/gms/internal/recaptcha/qf;Lcom/google/android/gms/internal/recaptcha/gh;)V

    return-object v0
.end method


# virtual methods
.method public final E()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/gh;->b()Lcom/google/android/gms/internal/recaptcha/fh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/fh;->F()Lcom/google/android/gms/internal/recaptcha/gh;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/ki;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;Lcom/google/android/gms/internal/recaptcha/pf;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/sh;",
            "Lcom/google/android/gms/internal/recaptcha/pf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    move-result-object v3

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->E()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_b

    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->c()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_3

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/recaptcha/kh;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    ushr-int/lit8 v4, v4, 0x3

    .line 4
    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/recaptcha/qf;->c(Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/gh;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/recaptcha/qf;->f(Lcom/google/android/gms/internal/recaptcha/sh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/uf;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;)Z

    move-result v4

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->C()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v7, v6

    .line 9
    :cond_4
    :goto_2
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->E()I

    move-result v8

    if-ne v8, v5, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->c()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 11
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->G()I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/recaptcha/kh;->a:Lcom/google/android/gms/internal/recaptcha/gh;

    .line 12
    invoke-virtual {v1, p3, v6, v4}, Lcom/google/android/gms/internal/recaptcha/qf;->c(Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/gh;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v6, :cond_7

    .line 13
    invoke-virtual {v1, p2, v6, p3, v3}, Lcom/google/android/gms/internal/recaptcha/qf;->f(Lcom/google/android/gms/internal/recaptcha/sh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/uf;)V

    goto :goto_2

    .line 14
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object v7

    goto :goto_2

    .line 15
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->C()Z

    move-result v8

    if-nez v8, :cond_4

    .line 16
    :goto_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->c()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_a

    if-eqz v7, :cond_0

    if-eqz v6, :cond_9

    .line 17
    invoke-virtual {v1, v7, v6, p3, v3}, Lcom/google/android/gms/internal/recaptcha/qf;->g(Lcom/google/android/gms/internal/recaptcha/zzpy;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/pf;Lcom/google/android/gms/internal/recaptcha/uf;)V

    goto :goto_0

    .line 18
    :cond_9
    invoke-virtual {v0, v2, v4, v7}, Lcom/google/android/gms/internal/recaptcha/ki;->k(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    goto :goto_0

    .line 19
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzb()Lcom/google/android/gms/internal/recaptcha/zzrr;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :cond_b
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/recaptcha/ki;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    throw p2
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 2
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->b:Lcom/google/android/gms/internal/recaptcha/ki;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/wh;->f(Lcom/google/android/gms/internal/recaptcha/ki;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/wh;->e(Lcom/google/android/gms/internal/recaptcha/qf;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/bj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/kh;->d:Lcom/google/android/gms/internal/recaptcha/qf;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/qf;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/uf;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
