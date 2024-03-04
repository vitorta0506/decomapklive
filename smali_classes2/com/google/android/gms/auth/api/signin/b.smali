.class public Lcom/google/android/gms/auth/api/signin/b;
.super Lcom/google/android/gms/common/api/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:Lcom/google/android/gms/auth/api/signin/f;

.field static l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/f;-><init>(Ls3/e;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/b;->k:Lcom/google/android/gms/auth/api/signin/f;

    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/auth/api/signin/b;->l:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lo3/a;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lv3/a;

    invoke-direct {v1}, Lv3/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lv3/k;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lo3/a;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lv3/a;

    invoke-direct {v1}, Lv3/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lv3/k;)V

    return-void
.end method

.method private final declared-synchronized v()I
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/gms/auth/api/signin/b;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->k()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/a;->m()Lcom/google/android/gms/common/a;

    move-result-object v1

    const v5, 0xbdfcb8

    .line 3
    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/common/a;->h(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_0

    sput v4, Lcom/google/android/gms/auth/api/signin/b;->l:I

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v0, v5, v4}, Lcom/google/android/gms/common/a;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sput v2, Lcom/google/android/gms/auth/api/signin/b;->l:I

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sput v3, Lcom/google/android/gms/auth/api/signin/b;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    .line 6
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public s()Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->k()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->v()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->j()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lt3/l;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->j()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lt3/l;->c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->j()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lt3/l;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public t()Lt4/g;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->e()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->k()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->v()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v0, v1, v2}, Lt3/l;->e(Lcom/google/android/gms/common/api/d;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Lcom/google/android/gms/common/api/f;)Lt4/g;

    move-result-object v0

    return-object v0
.end method

.method public u()Lt4/g;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->e()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->k()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/b;->v()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-static {v0, v1, v2}, Lt3/l;->f(Lcom/google/android/gms/common/api/d;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/f;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Lcom/google/android/gms/common/api/f;)Lt4/g;

    move-result-object v0

    return-object v0
.end method
