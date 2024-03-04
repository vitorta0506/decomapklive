.class public final Lcom/google/android/gms/internal/recaptcha/d7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/internal/recaptcha/d2;

.field private static final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Lcom/google/android/gms/internal/recaptcha/e7;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/internal/recaptcha/e7;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/android/gms/internal/recaptcha/u6;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/Runnable;

.field private static final h:Ljava/lang/Runnable;

.field public static final synthetic i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/d2;

    const-string v1, "tiktok_systrace"

    .line 1
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/recaptcha/d2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->a:Lcom/google/android/gms/internal/recaptcha/d2;

    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->b:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/b7;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/b7;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->d:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->e:Ljava/util/Deque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->f:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/z6;->a:Lcom/google/android/gms/internal/recaptcha/z6;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->g:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/a7;->a:Lcom/google/android/gms/internal/recaptcha/a7;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->h:Ljava/lang/Runnable;

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/e7;

    iget-object v0, v0, Lcom/google/android/gms/internal/recaptcha/e7;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/d7;->a()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/n6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/n6;-><init>()V

    :cond_0
    return-object v0
.end method

.method static c(Lcom/google/android/gms/internal/recaptcha/u6;)Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/e7;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/recaptcha/d7;->k(Lcom/google/android/gms/internal/recaptcha/e7;Lcom/google/android/gms/internal/recaptcha/u6;)Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p0

    return-object p0
.end method

.method static d(Lcom/google/android/gms/internal/recaptcha/u6;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->D()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/d7;->d(Lcom/google/android/gms/internal/recaptcha/u6;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->D()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e()Ljava/util/WeakHashMap;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->b:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static f(Lcom/google/android/gms/internal/recaptcha/u6;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->c:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/e7;

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/recaptcha/e7;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/u6;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->D()Ljava/lang/String;

    move-result-object v3

    if-ne p0, v1, :cond_0

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/recaptcha/d7;->k(Lcom/google/android/gms/internal/recaptcha/e7;Lcom/google/android/gms/internal/recaptcha/u6;)Lcom/google/android/gms/internal/recaptcha/u6;

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const-string v1, "Wrong trace, expected %s but got %s"

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/g8;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic g()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->d:Ljava/util/Deque;

    .line 1
    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/d7;->f:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->e:Ljava/util/Deque;

    .line 2
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/d7;->e:Ljava/util/Deque;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/u6;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic h()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/d7;->c(Lcom/google/android/gms/internal/recaptcha/u6;)Lcom/google/android/gms/internal/recaptcha/u6;

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->d:Ljava/util/Deque;

    .line 2
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->g:Ljava/lang/Runnable;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/h2;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/google/android/gms/internal/recaptcha/d7;->e:Ljava/util/Deque;

    .line 4
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public static i(Ljava/lang/String;I)Lcom/google/android/gms/internal/recaptcha/q6;
    .locals 1

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/recaptcha/s6;->c:Lcom/google/android/gms/internal/recaptcha/t6;

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1, v0}, Lcom/google/android/gms/internal/recaptcha/d7;->j(Ljava/lang/String;ILcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/q6;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;ILcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/q6;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/d7;->a()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/recaptcha/o6;

    .line 2
    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/o6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/recaptcha/g6;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/g6;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/gms/internal/recaptcha/g6;->q0(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;Z)Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/internal/recaptcha/u6;->r1(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/t6;)Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/d7;->c(Lcom/google/android/gms/internal/recaptcha/u6;)Lcom/google/android/gms/internal/recaptcha/u6;

    new-instance p0, Lcom/google/android/gms/internal/recaptcha/q6;

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/q6;-><init>(Lcom/google/android/gms/internal/recaptcha/u6;)V

    return-object p0
.end method

.method private static k(Lcom/google/android/gms/internal/recaptcha/e7;Lcom/google/android/gms/internal/recaptcha/u6;)Lcom/google/android/gms/internal/recaptcha/u6;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/e7;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    if-ne v0, p1, :cond_0

    return-object p1

    :cond_0
    if-nez v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/c7;->a()Z

    move-result v1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/d7;->a:Lcom/google/android/gms/internal/recaptcha/d2;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/f2;->a(Lcom/google/android/gms/internal/recaptcha/d2;)Z

    move-result v1

    .line 5
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/e7;->a:Z

    .line 6
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/e7;->a:Z

    if-eqz v1, :cond_3

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/d7;->o(Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/u6;)V

    :cond_3
    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/e7;->b:Lcom/google/android/gms/internal/recaptcha/u6;

    return-object v0
.end method

.method private static l(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method private static m(Lcom/google/android/gms/internal/recaptcha/u6;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/d7;->m(Lcom/google/android/gms/internal/recaptcha/u6;)V

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->D()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/d7;->l(Ljava/lang/String;)V

    return-void
.end method

.method private static n(Lcom/google/android/gms/internal/recaptcha/u6;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/d7;->n(Lcom/google/android/gms/internal/recaptcha/u6;)V

    :cond_0
    return-void
.end method

.method private static o(Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/u6;)V
    .locals 1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/u6;->zza()Lcom/google/android/gms/internal/recaptcha/u6;

    move-result-object v0

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/u6;->D()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/d7;->l(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/d7;->n(Lcom/google/android/gms/internal/recaptcha/u6;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/d7;->m(Lcom/google/android/gms/internal/recaptcha/u6;)V

    :cond_4
    return-void
.end method
