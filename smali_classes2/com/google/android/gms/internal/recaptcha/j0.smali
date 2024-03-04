.class public final Lcom/google/android/gms/internal/recaptcha/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/o0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/o0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/o0;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/j0;->a:Lcom/google/android/gms/internal/recaptcha/o0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/recaptcha/f;Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/f;->m0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/recaptcha/zzai;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RecaptchaOPInit"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/recaptcha/f;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/j0;->a:Lcom/google/android/gms/internal/recaptcha/o0;

    .line 1
    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/recaptcha/o0;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/g1;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p4

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/i0;

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/i0;-><init>(Lcom/google/android/gms/internal/recaptcha/j0;Lcom/google/android/gms/internal/recaptcha/f;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/recaptcha/p0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {p4, v0, p1}, Lcom/google/android/gms/internal/recaptcha/dd;->m(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/yc;Ljava/util/concurrent/Executor;)V

    return-void
.end method
