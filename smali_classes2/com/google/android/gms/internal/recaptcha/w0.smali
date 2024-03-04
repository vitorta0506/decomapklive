.class public final Lcom/google/android/gms/internal/recaptcha/w0;
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


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/recaptcha/h4;Lcom/google/android/gms/internal/recaptcha/j1;)V
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/w0;->a:Lcom/google/android/gms/internal/recaptcha/h4;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/w0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/w0;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/w0;

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/r0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/m4;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/recaptcha/s0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/m4;)Lcom/google/android/gms/internal/recaptcha/h4;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/k1;->a()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/recaptcha/w0;-><init>(Lcom/google/android/gms/internal/recaptcha/h4;Lcom/google/android/gms/internal/recaptcha/j1;)V

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/v1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/recaptcha/w0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/v1;->x()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/recaptcha/a2;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/a2;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/w0;->a:Lcom/google/android/gms/internal/recaptcha/h4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/k5;->d()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/t0;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/recaptcha/t0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/recaptcha/dd;->j(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/v1;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/recaptcha/dg;->o()Lcom/google/android/gms/internal/recaptcha/zf;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/recaptcha/s1;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/recaptcha/w0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/a2;->t()Lcom/google/android/gms/internal/recaptcha/z1;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/recaptcha/z1;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/z1;

    iget-object p3, p0, Lcom/google/android/gms/internal/recaptcha/w0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 5
    invoke-interface {p3}, Lcom/google/android/gms/internal/recaptcha/j1;->zza()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/recaptcha/z1;->o(Lcom/google/android/gms/internal/recaptcha/ji;)Lcom/google/android/gms/internal/recaptcha/z1;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/recaptcha/a2;

    .line 7
    invoke-virtual {p4, p1, p2}, Lcom/google/android/gms/internal/recaptcha/s1;->o(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/a2;)Lcom/google/android/gms/internal/recaptcha/s1;

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/recaptcha/v1;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/dd;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/w0;->a:Lcom/google/android/gms/internal/recaptcha/h4;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/u0;

    .line 1
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/u0;-><init>(Lcom/google/android/gms/internal/recaptcha/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/k5;->i(Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/recaptcha/v0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/recaptcha/v0;-><init>(Lcom/google/android/gms/internal/recaptcha/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/recaptcha/p0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v7, p1}, Lcom/google/android/gms/internal/recaptcha/dd;->m(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/yc;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
