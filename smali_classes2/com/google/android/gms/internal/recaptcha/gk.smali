.class public final Lcom/google/android/gms/internal/recaptcha/gk;
.super Lcom/google/android/gms/internal/recaptcha/zf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/zf<",
        "Lcom/google/android/gms/internal/recaptcha/hk;",
        "Lcom/google/android/gms/internal/recaptcha/gk;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/hk;->w()Lcom/google/android/gms/internal/recaptcha/hk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/bk;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/hk;->w()Lcom/google/android/gms/internal/recaptcha/hk;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method


# virtual methods
.method public final o(I)Lcom/google/android/gms/internal/recaptcha/gk;
    .locals 1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/hk;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/recaptcha/hk;->y(Lcom/google/android/gms/internal/recaptcha/hk;I)V

    return-object p0
.end method

.method public final p(J)Lcom/google/android/gms/internal/recaptcha/gk;
    .locals 2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/hk;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/recaptcha/hk;->z(Lcom/google/android/gms/internal/recaptcha/hk;J)V

    return-object p0
.end method
