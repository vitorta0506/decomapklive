.class public final Lcom/google/android/gms/internal/recaptcha/x1;
.super Lcom/google/android/gms/internal/recaptcha/zf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/zf<",
        "Lcom/google/android/gms/internal/recaptcha/y1;",
        "Lcom/google/android/gms/internal/recaptcha/x1;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/y1;->u()Lcom/google/android/gms/internal/recaptcha/y1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/r1;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/y1;->u()Lcom/google/android/gms/internal/recaptcha/y1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/recaptcha/x1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/y1;->B(Lcom/google/android/gms/internal/recaptcha/y1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final p(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/recaptcha/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;)",
            "Lcom/google/android/gms/internal/recaptcha/x1;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/y1;->C(Lcom/google/android/gms/internal/recaptcha/y1;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final q(Lcom/google/android/gms/internal/recaptcha/ji;)Lcom/google/android/gms/internal/recaptcha/x1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/y1;->G(Lcom/google/android/gms/internal/recaptcha/y1;Lcom/google/android/gms/internal/recaptcha/ji;)V

    return-object p0
.end method

.method public final r(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/x1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/y1;->E(Lcom/google/android/gms/internal/recaptcha/y1;Ljava/lang/String;)V

    return-object p0
.end method

.method public final s(Lcom/google/android/gms/internal/recaptcha/xj;)Lcom/google/android/gms/internal/recaptcha/x1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/y1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/y1;->D(Lcom/google/android/gms/internal/recaptcha/y1;Lcom/google/android/gms/internal/recaptcha/xj;)V

    return-object p0
.end method
