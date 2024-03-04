.class public final Lt3/s;
.super Lt3/n;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lt3/n;-><init>()V

    iput-object p1, p0, Lt3/s;->a:Landroid/content/Context;

    return-void
.end method

.method private final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt3/s;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Le4/p;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final i()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt3/s;->f()V

    iget-object v0, p0, Lt3/s;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lt3/m;->a(Landroid/content/Context;)Lt3/m;

    move-result-object v0

    invoke-virtual {v0}, Lt3/m;->b()V

    return-void
.end method

.method public final p()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lt3/s;->f()V

    iget-object v0, p0, Lt3/s;->a:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lt3/b;->b(Landroid/content/Context;)Lt3/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lt3/b;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lt3/b;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lt3/s;->a:Landroid/content/Context;

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/auth/api/signin/a;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/b;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/b;->t()Lt4/g;

    return-void

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/b;->u()Lt4/g;

    return-void
.end method
