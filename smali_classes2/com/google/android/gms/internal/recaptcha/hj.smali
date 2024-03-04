.class public final Lcom/google/android/gms/internal/recaptcha/hj;
.super Lcom/google/android/gms/internal/recaptcha/zf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/zf<",
        "Lcom/google/android/gms/internal/recaptcha/ij;",
        "Lcom/google/android/gms/internal/recaptcha/hj;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ij;->u()Lcom/google/android/gms/internal/recaptcha/ij;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/gj;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ij;->u()Lcom/google/android/gms/internal/recaptcha/ij;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method


# virtual methods
.method public final o(Lcom/google/android/gms/internal/recaptcha/pj;)Lcom/google/android/gms/internal/recaptcha/hj;
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
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/ij;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/ij;->v(Lcom/google/android/gms/internal/recaptcha/ij;Lcom/google/android/gms/internal/recaptcha/pj;)V

    return-object p0
.end method

.method public final p(Z)Lcom/google/android/gms/internal/recaptcha/hj;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/ij;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/recaptcha/ij;->w(Lcom/google/android/gms/internal/recaptcha/ij;Z)V

    return-object p0
.end method
