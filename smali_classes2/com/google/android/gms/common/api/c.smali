.class public abstract Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/e<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a;

.field private final d:Lcom/google/android/gms/common/api/a$d;

.field private final e:Lv3/b;

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/d;

.field private final i:Lv3/k;

.field protected final j:Lcom/google/android/gms/common/api/internal/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/c$a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lv3/k;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv3/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lv3/k;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/c$a$a;->c(Lv3/k;)Lcom/google/android/gms/common/api/c$a$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/c$a$a;->b(Landroid/os/Looper;)Lcom/google/android/gms/common/api/c$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object p4

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 5
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 6
    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Landroid/content/Context;

    .line 8
    invoke-static {}, Le4/m;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/common/api/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    iput-object p4, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    .line 11
    iget-object p1, p5, Lcom/google/android/gms/common/api/c$a;->b:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/c;->f:Landroid/os/Looper;

    .line 12
    invoke-static {p3, p4, v1}, Lv3/b;->a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lv3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/c;->e:Lv3/b;

    .line 13
    new-instance p3, Lv3/q;

    invoke-direct {p3, p0}, Lv3/q;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object p3, p0, Lcom/google/android/gms/common/api/c;->h:Lcom/google/android/gms/common/api/d;

    iget-object p3, p0, Lcom/google/android/gms/common/api/c;->a:Landroid/content/Context;

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/common/api/internal/c;->y(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/c;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/common/api/c;->j:Lcom/google/android/gms/common/api/internal/c;

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/c;->n()I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/common/api/c;->g:I

    .line 16
    iget-object p4, p5, Lcom/google/android/gms/common/api/c$a;->a:Lv3/k;

    iput-object p4, p0, Lcom/google/android/gms/common/api/c;->i:Lv3/k;

    if-eqz p2, :cond_1

    .line 17
    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_1

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_1

    .line 19
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/common/api/internal/h;->u(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/c;Lv3/b;)V

    .line 20
    :cond_1
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/internal/c;->c(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/c$a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lv3/k;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/api/a$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lv3/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lv3/k;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 22
    new-instance v0, Lcom/google/android/gms/common/api/c$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/c$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/c$a$a;->c(Lv3/k;)Lcom/google/android/gms/common/api/c$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/c$a$a;->a()Lcom/google/android/gms/common/api/c$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/c$a;)V

    return-void
.end method

.method private final q(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .param p2    # Lcom/google/android/gms/common/api/internal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->j:Lcom/google/android/gms/common/api/internal/c;

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->E(Lcom/google/android/gms/common/api/c;ILcom/google/android/gms/common/api/internal/b;)V

    return-object p2
.end method

.method private final r(ILcom/google/android/gms/common/api/internal/d;)Lt4/g;
    .locals 7
    .param p2    # Lcom/google/android/gms/common/api/internal/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v6, Lt4/h;

    invoke-direct {v6}, Lt4/h;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->j:Lcom/google/android/gms/common/api/internal/c;

    iget-object v5, p0, Lcom/google/android/gms/common/api/c;->i:Lv3/k;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/c;->F(Lcom/google/android/gms/common/api/c;ILcom/google/android/gms/common/api/internal/d;Lt4/h;Lv3/k;)V

    .line 3
    invoke-virtual {v6}, Lt4/h;->a()Lt4/g;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c()Lv3/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/b<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->e:Lv3/b;

    return-object v0
.end method

.method public e()Lcom/google/android/gms/common/api/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->h:Lcom/google/android/gms/common/api/d;

    return-object v0
.end method

.method protected f()Lcom/google/android/gms/common/internal/e$a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/e$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->y()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->F()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    .line 6
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$a;->F()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->d(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    .line 9
    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_3

    .line 10
    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->y()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f0()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 15
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->c(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->a:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->e(Ljava/lang/String;)Lcom/google/android/gms/common/internal/e$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e$a;->b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/e$a;

    return-object v0
.end method

.method public g(Lcom/google/android/gms/common/api/internal/d;)Lt4/g;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/d<",
            "TA;TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/c;->r(ILcom/google/android/gms/common/api/internal/d;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/android/gms/common/api/internal/d;)Lt4/g;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$b;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/d<",
            "TA;TTResult;>;)",
            "Lt4/g<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/c;->r(ILcom/google/android/gms/common/api/internal/d;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/google/android/gms/common/api/i;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/c;->q(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    return-object p1
.end method

.method public j()Lcom/google/android/gms/common/api/a$d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    return-object v0
.end method

.method public k()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Landroid/os/Looper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/c;->g:I

    return v0
.end method

.method public final o(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->f()Lcom/google/android/gms/common/internal/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/e$a;->a()Lcom/google/android/gms/common/internal/e;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->c:Lcom/google/android/gms/common/api/a;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a$a;

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/c;->d:Lcom/google/android/gms/common/api/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    .line 3
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->l()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/common/internal/d;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/d;->M(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    instance-of v0, p1, Lv3/g;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p1

    check-cast v0, Lv3/g;

    invoke-virtual {v0, p2}, Lv3/g;->o(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final p(Landroid/content/Context;Landroid/os/Handler;)Lv3/a0;
    .locals 2

    new-instance v0, Lv3/a0;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->f()Lcom/google/android/gms/common/internal/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/e$a;->a()Lcom/google/android/gms/common/internal/e;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lv3/a0;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V

    return-object v0
.end method
