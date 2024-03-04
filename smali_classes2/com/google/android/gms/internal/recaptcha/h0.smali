.class public final Lcom/google/android/gms/internal/recaptcha/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/concurrent/ExecutorService;

.field public static final synthetic f:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/recaptcha/j1;

.field private final c:Lcom/google/android/gms/internal/recaptcha/o0;

.field private final d:Lcom/google/android/gms/internal/recaptcha/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/p0;->b:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/h0;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/k1;->a()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/o0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/o0;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/w0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/w0;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/h0;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/h0;->c:Lcom/google/android/gms/internal/recaptcha/o0;

    iput-object v2, p0, Lcom/google/android/gms/internal/recaptcha/h0;->d:Lcom/google/android/gms/internal/recaptcha/w0;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/recaptcha/d;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/d;->k(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/recaptcha/zzx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RecaptchaOPExecute"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Ljava/lang/String;Lcom/google/android/gms/recaptcha/RecaptchaAction;JLjava/util/Map;Lcom/google/android/gms/internal/recaptcha/c1;Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->M()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/a0;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/p0;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/recaptcha/h0;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/vj;->u()Lcom/google/android/gms/internal/recaptcha/vj;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/recaptcha/a0;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/recaptcha/dg;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/tj;->v()Lcom/google/android/gms/internal/recaptcha/rj;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/recaptcha/rj;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/rj;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/recaptcha/rj;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/rj;

    .line 6
    invoke-virtual {v2, p4, p5}, Lcom/google/android/gms/internal/recaptcha/rj;->w(J)Lcom/google/android/gms/internal/recaptcha/rj;

    .line 7
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/recaptcha/rj;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/rj;

    .line 8
    invoke-virtual {v2, p8}, Lcom/google/android/gms/internal/recaptcha/rj;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/rj;

    .line 9
    invoke-virtual {v2, p6}, Lcom/google/android/gms/internal/recaptcha/rj;->o(Ljava/util/Map;)Lcom/google/android/gms/internal/recaptcha/rj;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/recaptcha/rj;->t(Z)Lcom/google/android/gms/internal/recaptcha/rj;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/recaptcha/c1;->a()Lcom/google/android/gms/internal/recaptcha/zzkl;

    move-result-object p2

    .line 11
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/recaptcha/rj;->p(Ljava/util/Map;)Lcom/google/android/gms/internal/recaptcha/rj;

    invoke-virtual {p7}, Lcom/google/android/gms/internal/recaptcha/c1;->b()Lcom/google/android/gms/internal/recaptcha/zj;

    move-result-object p2

    .line 12
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/recaptcha/rj;->s(Lcom/google/android/gms/internal/recaptcha/zj;)Lcom/google/android/gms/internal/recaptcha/rj;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/recaptcha/tj;

    .line 14
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/recaptcha/a0;->a(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/recaptcha/c0;

    .line 15
    invoke-direct {p3, p0, p1, p8}, Lcom/google/android/gms/internal/recaptcha/c0;-><init>(Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 17
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/recaptcha/dd;->j(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/g1;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/internal/recaptcha/y1;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/recaptcha/y1;->y()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h0;->b:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/j1;->zza()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/fj;->b(Lcom/google/android/gms/internal/recaptcha/ji;)Lcom/google/android/gms/internal/recaptcha/ji;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/ji;->u()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    invoke-static {v1, v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/va;->b(JJ)J

    move-result-wide v1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/ji;->t()I

    move-result v0

    int-to-long v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 6
    invoke-static {v1, v2, v4, v5}, Lcom/google/android/gms/internal/recaptcha/va;->a(JJ)J

    move-result-wide v5

    .line 7
    invoke-virtual {p4}, Lcom/google/android/gms/internal/recaptcha/y1;->z()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaAction;->K()Landroid/os/Bundle;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    .line 8
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 13
    check-cast v4, Ljava/lang/String;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzbi;

    const-string p2, "Only string values are allowed as an additional arg in RecaptchaAction"

    .line 14
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzbi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/recaptcha/zzbi;

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x3c

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "AdditionalArgs key[ \""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" ] is not accepted by reCATPCHA server"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/recaptcha/zzbi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/recaptcha/h0;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/recaptcha/g1;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/c1;

    move-result-object v8

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/h0;->d:Lcom/google/android/gms/internal/recaptcha/w0;

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->L()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->K()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2, p4, v0}, Lcom/google/android/gms/internal/recaptcha/w0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p2

    new-instance p4, Lcom/google/android/gms/internal/recaptcha/e0;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/recaptcha/e0;-><init>(Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Ljava/lang/String;Lcom/google/android/gms/recaptcha/RecaptchaAction;JLjava/util/Map;Lcom/google/android/gms/internal/recaptcha/c1;)V

    sget-object p1, Lcom/google/android/gms/internal/recaptcha/h0;->e:Ljava/util/concurrent/ExecutorService;

    .line 21
    invoke-static {p2, p4, p1}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic c(Lcom/google/android/gms/recaptcha/RecaptchaHandle;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/vj;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h0;->d:Lcom/google/android/gms/internal/recaptcha/w0;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->K()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RecaptchaOPExecute"

    .line 2
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/recaptcha/w0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/nd;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/vj;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/internal/recaptcha/d;Lcom/google/android/gms/recaptcha/RecaptchaHandle;Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/g1;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/h0;->c:Lcom/google/android/gms/internal/recaptcha/o0;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/recaptcha/RecaptchaHandle;->K()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v1, v2, p4}, Lcom/google/android/gms/internal/recaptcha/o0;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/f0;->a:Lcom/google/android/gms/internal/recaptcha/f0;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ud;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Ljava/lang/Exception;

    .line 5
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/recaptcha/dd;->c(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/d0;

    .line 6
    invoke-direct {v1, p0, p3, p4, p2}, Lcom/google/android/gms/internal/recaptcha/d0;-><init>(Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/recaptcha/RecaptchaAction;Lcom/google/android/gms/internal/recaptcha/g1;Lcom/google/android/gms/recaptcha/RecaptchaHandle;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/y6;->c(Lcom/google/android/gms/internal/recaptcha/dc;)Lcom/google/android/gms/internal/recaptcha/dc;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/internal/recaptcha/h0;->e:Ljava/util/concurrent/ExecutorService;

    .line 8
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/dd;->k(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p2

    new-instance p4, Lcom/google/android/gms/internal/recaptcha/g0;

    .line 9
    invoke-direct {p4, p0, p1}, Lcom/google/android/gms/internal/recaptcha/g0;-><init>(Lcom/google/android/gms/internal/recaptcha/h0;Lcom/google/android/gms/internal/recaptcha/d;)V

    invoke-static {p2, p4, p3}, Lcom/google/android/gms/internal/recaptcha/dd;->m(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/yc;Ljava/util/concurrent/Executor;)V

    return-void
.end method
