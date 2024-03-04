.class public final Lcom/google/android/gms/internal/recaptcha/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/google/android/gms/internal/recaptcha/r0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/recaptcha/m4;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/n4;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/n4;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/ye;->a()Lcom/google/android/gms/internal/recaptcha/wb;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/n4;->c(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/recaptcha/n4;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/p2;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/t2;->j(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/s2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/s2;->b()Lcom/google/android/gms/internal/recaptcha/t2;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzp(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/recaptcha/p2;-><init>(Ljava/util/List;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/n4;->d(Lcom/google/android/gms/internal/recaptcha/p2;)Lcom/google/android/gms/internal/recaptcha/n4;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/z4;->c()Lcom/google/android/gms/internal/recaptcha/p5;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/recaptcha/n4;->b(Lcom/google/android/gms/internal/recaptcha/p5;)Lcom/google/android/gms/internal/recaptcha/n4;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/n4;->a()Lcom/google/android/gms/internal/recaptcha/m4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/r0;->a:Lcom/google/android/gms/internal/recaptcha/m4;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/m4;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/r0;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/r0;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/r0;->a:Lcom/google/android/gms/internal/recaptcha/m4;

    return-object p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/r0;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/recaptcha/r0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/r0;->b:Lcom/google/android/gms/internal/recaptcha/r0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/r0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/recaptcha/r0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/r0;->b:Lcom/google/android/gms/internal/recaptcha/r0;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/recaptcha/r0;->b:Lcom/google/android/gms/internal/recaptcha/r0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
