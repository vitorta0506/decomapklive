.class final Lcom/google/android/gms/common/api/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$c;
.implements Lv3/z;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/a$f;

.field private final b:Lv3/b;

.field private c:Lcom/google/android/gms/common/internal/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field final synthetic f:Lcom/google/android/gms/common/api/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/api/a$f;Lv3/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->f:Lcom/google/android/gms/common/api/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/internal/i;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/r;->e:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/r;->a:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/r;->b:Lv3/b;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/common/api/internal/r;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/r;->a:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/common/api/internal/r;)Lv3/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/r;->b:Lv3/b;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/common/api/internal/r;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/r;->e:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/google/android/gms/common/api/internal/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/r;->h()V

    return-void
.end method

.method private final h()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/r;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/internal/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/r;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/a$f;->i(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->f:Lcom/google/android/gms/common/api/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->s(Lcom/google/android/gms/common/api/internal/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/q;-><init>(Lcom/google/android/gms/common/api/internal/r;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/internal/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/r;->c:Lcom/google/android/gms/common/internal/i;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/r;->d:Ljava/util/Set;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/r;->h()V

    return-void

    .line 3
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/r;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/r;->f:Lcom/google/android/gms/common/api/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/c;->B(Lcom/google/android/gms/common/api/internal/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/r;->b:Lv3/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/o;->H(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method
