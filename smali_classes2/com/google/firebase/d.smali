.class public Lcom/google/firebase/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/d$d;,
        Lcom/google/firebase/d$c;,
        Lcom/google/firebase/d$e;,
        Lcom/google/firebase/d$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/util/concurrent/Executor;

.field static final m:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/firebase/i;

.field private final d:La6/o;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:La6/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La6/u<",
            "Lp6/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Lcom/google/firebase/heartbeatinfo/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/firebase/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/d$d;-><init>(Lcom/google/firebase/d$a;)V

    sput-object v0, Lcom/google/firebase/d;->l:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/firebase/d;->m:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/i;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/d;->i:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/d;->j:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/d;->a:Landroid/content/Context;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/p;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/i;

    iput-object p2, p0, Lcom/google/firebase/d;->c:Lcom/google/firebase/i;

    const-string p2, "Firebase"

    .line 9
    invoke-static {p2}, Lt6/c;->b(Ljava/lang/String;)V

    const-string p2, "ComponentDiscovery"

    .line 10
    invoke-static {p2}, Lt6/c;->b(Ljava/lang/String;)V

    .line 11
    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 12
    invoke-static {p1, p2}, La6/g;->c(Landroid/content/Context;Ljava/lang/Class;)La6/g;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, La6/g;->b()Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-static {}, Lt6/c;->a()V

    const-string v0, "Runtime"

    .line 15
    invoke-static {v0}, Lt6/c;->b(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/google/firebase/d;->l:Ljava/util/concurrent/Executor;

    .line 17
    invoke-static {v0}, La6/o;->d(Ljava/util/concurrent/Executor;)La6/o$b;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p2}, La6/o$b;->d(Ljava/util/Collection;)La6/o$b;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 19
    invoke-virtual {p2, v0}, La6/o$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)La6/o$b;

    move-result-object p2

    const-class v0, Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Class;

    .line 20
    invoke-static {p1, v0, v2}, La6/d;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)La6/d;

    move-result-object v0

    invoke-virtual {p2, v0}, La6/o$b;->b(La6/d;)La6/o$b;

    move-result-object p2

    const-class v0, Lcom/google/firebase/d;

    new-array v2, v1, [Ljava/lang/Class;

    .line 21
    invoke-static {p0, v0, v2}, La6/d;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)La6/d;

    move-result-object v0

    invoke-virtual {p2, v0}, La6/o$b;->b(La6/d;)La6/o$b;

    move-result-object p2

    const-class v0, Lcom/google/firebase/i;

    new-array v1, v1, [Ljava/lang/Class;

    .line 22
    invoke-static {p3, v0, v1}, La6/d;->q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)La6/d;

    move-result-object p3

    invoke-virtual {p2, p3}, La6/o$b;->b(La6/d;)La6/o$b;

    move-result-object p2

    new-instance p3, Lt6/b;

    invoke-direct {p3}, Lt6/b;-><init>()V

    .line 23
    invoke-virtual {p2, p3}, La6/o$b;->g(La6/j;)La6/o$b;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, La6/o$b;->e()La6/o;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/d;->d:La6/o;

    .line 25
    invoke-static {}, Lt6/c;->a()V

    .line 26
    new-instance p3, La6/u;

    new-instance v0, Lcom/google/firebase/c;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/c;-><init>(Lcom/google/firebase/d;Landroid/content/Context;)V

    invoke-direct {p3, v0}, La6/u;-><init>(Lk6/b;)V

    iput-object p3, p0, Lcom/google/firebase/d;->g:La6/u;

    .line 27
    const-class p1, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p2, p1}, La6/o;->l(Ljava/lang/Class;)Lk6/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/d;->h:Lk6/b;

    .line 28
    new-instance p1, Lcom/google/firebase/b;

    invoke-direct {p1, p0}, Lcom/google/firebase/b;-><init>(Lcom/google/firebase/d;)V

    invoke-virtual {p0, p1}, Lcom/google/firebase/d;->g(Lcom/google/firebase/d$b;)V

    .line 29
    invoke-static {}, Lt6/c;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/d;->x(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/d;Landroid/content/Context;)Lp6/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/d;->w(Landroid/content/Context;)Lp6/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/firebase/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/d;->q()V

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/d;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/d;->z(Z)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/p;->o(ZLjava/lang/Object;)V

    return-void
.end method

.method private static j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/google/firebase/d;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/d;

    .line 4
    invoke-virtual {v3}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static l()Lcom/google/firebase/d;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/d;->m:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/d;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Le4/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static m(Ljava/lang/String;)Lcom/google/firebase/d;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/d;->m:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/firebase/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/d;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, v1, Lcom/google/firebase/d;->h:Lk6/b;

    invoke-interface {p0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p0}, Lcom/google/firebase/heartbeatinfo/a;->n()Lt4/g;

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/firebase/d;->j()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available app names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 8
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "FirebaseApp with name %s doesn\'t exist. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v1, v3, p0

    .line 9
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/d;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/google/firebase/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/d$e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/google/firebase/d;->d:La6/o;

    invoke-virtual {p0}, Lcom/google/firebase/d;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, La6/o;->g(Z)V

    .line 8
    iget-object v0, p0, Lcom/google/firebase/d;->h:Lk6/b;

    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/a;->n()Lt4/g;

    :goto_0
    return-void
.end method

.method public static r(Landroid/content/Context;)Lcom/google/firebase/d;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/d;->m:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/d;->l()Lcom/google/firebase/d;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/i;->a(Landroid/content/Context;)Lcom/google/firebase/i;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    .line 5
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 6
    monitor-exit v0

    return-object p0

    .line 7
    :cond_1
    invoke-static {p0, v1}, Lcom/google/firebase/d;->s(Landroid/content/Context;Lcom/google/firebase/i;)Lcom/google/firebase/d;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static s(Landroid/content/Context;Lcom/google/firebase/i;)Lcom/google/firebase/d;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lcom/google/firebase/d;->t(Landroid/content/Context;Lcom/google/firebase/i;Ljava/lang/String;)Lcom/google/firebase/d;

    move-result-object p0

    return-object p0
.end method

.method public static t(Landroid/content/Context;Lcom/google/firebase/i;Ljava/lang/String;)Lcom/google/firebase/d;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/firebase/d$c;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {p2}, Lcom/google/firebase/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    :goto_0
    sget-object v0, Lcom/google/firebase/d;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/firebase/d;->m:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirebaseApp name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/p;->o(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    .line 9
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Lcom/google/firebase/d;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/i;)V

    .line 11
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-direct {v2}, Lcom/google/firebase/d;->q()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic w(Landroid/content/Context;)Lp6/a;
    .locals 4

    .line 1
    new-instance v0, Lp6/a;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/d;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/d;->d:La6/o;

    const-class v3, Lh6/c;

    .line 3
    invoke-virtual {v2, v3}, La6/o;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh6/c;

    invoke-direct {v0, p1, v1, v2}, Lp6/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lh6/c;)V

    return-object v0
.end method

.method private synthetic x(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/firebase/d;->h:Lk6/b;

    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/heartbeatinfo/a;

    invoke-virtual {p1}, Lcom/google/firebase/heartbeatinfo/a;->n()Lt4/g;

    :cond_0
    return-void
.end method

.method private static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private z(Z)V
    .locals 2

    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/d$b;

    .line 3
    invoke-interface {v1, p1}, Lcom/google/firebase/d$b;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/firebase/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/d;

    invoke-virtual {p1}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/google/firebase/d$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/d;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->b()Lcom/google/android/gms/common/api/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Lcom/google/firebase/d$b;->a(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/d;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->d:La6/o;

    invoke-virtual {v0, p1}, La6/o;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/d;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/d;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/google/firebase/i;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/d;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->c:Lcom/google/firebase/i;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Le4/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/d;->o()Lcom/google/firebase/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 3
    invoke-static {v1}, Le4/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/d;->c:Lcom/google/firebase/i;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/d;->h()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/d;->g:La6/u;

    invoke-virtual {v0}, La6/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp6/a;

    invoke-virtual {v0}, Lp6/a;->b()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
