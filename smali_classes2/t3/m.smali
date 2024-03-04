.class public final Lt3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lt3/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field final a:Lt3/b;

.field b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lt3/b;->b(Landroid/content/Context;)Lt3/b;

    move-result-object p1

    iput-object p1, p0, Lt3/m;->a:Lt3/b;

    .line 2
    invoke-virtual {p1}, Lt3/b;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    iput-object v0, p0, Lt3/m;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 3
    invoke-virtual {p1}, Lt3/b;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lt3/m;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lt3/m;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lt3/m;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lt3/m;->d(Landroid/content/Context;)Lt3/m;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized d(Landroid/content/Context;)Lt3/m;
    .locals 2

    const-class v0, Lt3/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lt3/m;->d:Lt3/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lt3/m;

    invoke-direct {v1, p0}, Lt3/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lt3/m;->d:Lt3/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/m;->a:Lt3/b;

    invoke-virtual {v0}, Lt3/b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt3/m;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lt3/m;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/m;->a:Lt3/b;

    invoke-virtual {v0, p2, p1}, Lt3/b;->f(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iput-object p2, p0, Lt3/m;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lt3/m;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
