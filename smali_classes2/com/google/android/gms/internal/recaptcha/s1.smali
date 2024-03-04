.class public final Lcom/google/android/gms/internal/recaptcha/s1;
.super Lcom/google/android/gms/internal/recaptcha/zf;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/recaptcha/zf<",
        "Lcom/google/android/gms/internal/recaptcha/v1;",
        "Lcom/google/android/gms/internal/recaptcha/s1;",
        ">;",
        "Lcom/google/android/gms/internal/recaptcha/hh;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/v1;->t()Lcom/google/android/gms/internal/recaptcha/v1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/r1;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/v1;->t()Lcom/google/android/gms/internal/recaptcha/v1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/zf;-><init>(Lcom/google/android/gms/internal/recaptcha/dg;)V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/a2;)Lcom/google/android/gms/internal/recaptcha/s1;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/v1;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/v1;->w(Lcom/google/android/gms/internal/recaptcha/v1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final p(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/y1;)Lcom/google/android/gms/internal/recaptcha/s1;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/zf;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/zf;->b:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/v1;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/v1;->v(Lcom/google/android/gms/internal/recaptcha/v1;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
