.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field private static final o:J

.field private static p:Lcom/google/firebase/messaging/q0;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "FirebaseMessaging.class"
    .end annotation
.end field

.field static q:Ll1/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static r:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "FirebaseMessaging.class"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/firebase/d;

.field private final b:Lj6/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ll6/d;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/firebase/messaging/z;

.field private final f:Lcom/google/firebase/messaging/m0;

.field private final g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Lt4/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt4/g<",
            "Lcom/google/firebase/messaging/v0;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/firebase/messaging/e0;

.field private m:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final n:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->o:J

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/d;Lj6/a;Lk6/b;Lk6/b;Ll6/d;Ll1/f;Lh6/d;)V
    .locals 9
    .param p2    # Lj6/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ll1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/d;",
            "Lj6/a;",
            "Lk6/b<",
            "Ls6/i;",
            ">;",
            "Lk6/b<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Ll6/d;",
            "Ll1/f;",
            "Lh6/d;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/e0;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/d;->k()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/firebase/messaging/e0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/d;Lj6/a;Lk6/b;Lk6/b;Ll6/d;Ll1/f;Lh6/d;Lcom/google/firebase/messaging/e0;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/d;Lj6/a;Lk6/b;Lk6/b;Ll6/d;Ll1/f;Lh6/d;Lcom/google/firebase/messaging/e0;)V
    .locals 11
    .param p2    # Lj6/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ll1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/d;",
            "Lj6/a;",
            "Lk6/b<",
            "Ls6/i;",
            ">;",
            "Lk6/b<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Ll6/d;",
            "Ll1/f;",
            "Lh6/d;",
            "Lcom/google/firebase/messaging/e0;",
            ")V"
        }
    .end annotation

    .line 4
    new-instance v7, Lcom/google/firebase/messaging/z;

    move-object v0, v7

    move-object v1, p1

    move-object/from16 v2, p8

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/z;-><init>(Lcom/google/firebase/d;Lcom/google/firebase/messaging/e0;Lk6/b;Lk6/b;Ll6/d;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/m;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/m;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    .line 7
    invoke-static {}, Lcom/google/firebase/messaging/m;->b()Ljava/util/concurrent/Executor;

    move-result-object v10

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 8
    invoke-direct/range {v0 .. v10}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lcom/google/firebase/d;Lj6/a;Ll6/d;Ll1/f;Lh6/d;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/d;Lj6/a;Ll6/d;Ll1/f;Lh6/d;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Lj6/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ll1/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Z

    .line 11
    sput-object p4, Lcom/google/firebase/messaging/FirebaseMessaging;->q:Ll1/f;

    .line 12
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    .line 13
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj6/a;

    .line 14
    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Ll6/d;

    .line 15
    new-instance p3, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-direct {p3, p0, p5}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lh6/d;)V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/d;->k()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    .line 17
    new-instance p4, Lcom/google/firebase/messaging/o;

    invoke-direct {p4}, Lcom/google/firebase/messaging/o;-><init>()V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 18
    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/e0;

    .line 19
    iput-object p8, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Ljava/util/concurrent/Executor;

    .line 20
    iput-object p7, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/z;

    .line 21
    new-instance p5, Lcom/google/firebase/messaging/m0;

    invoke-direct {p5, p8}, Lcom/google/firebase/messaging/m0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/m0;

    .line 22
    iput-object p9, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    .line 23
    iput-object p10, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Ljava/util/concurrent/Executor;

    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/d;->k()Landroid/content/Context;

    move-result-object p1

    .line 25
    instance-of p5, p1, Landroid/app/Application;

    if-eqz p5, :cond_0

    .line 26
    check-cast p1, Landroid/app/Application;

    .line 27
    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 28
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Context "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was not an application, can\'t register for lifecycle callbacks. Some notification events may be dropped as a result."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "FirebaseMessaging"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    .line 29
    new-instance p1, Lcom/google/firebase/messaging/q;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/q;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Lj6/a;->b(Lj6/a$a;)V

    .line 30
    :cond_1
    new-instance p1, Lcom/google/firebase/messaging/s;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/s;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    invoke-static {}, Lcom/google/firebase/messaging/m;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 32
    invoke-static {p0, p6, p7, p3, p1}, Lcom/google/firebase/messaging/v0;->e(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/e0;Lcom/google/firebase/messaging/z;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lt4/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Lt4/g;

    .line 33
    new-instance p2, Lcom/google/firebase/messaging/u;

    invoke-direct {p2, p0}, Lcom/google/firebase/messaging/u;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, p9, p2}, Lt4/g;->g(Ljava/util/concurrent/Executor;Lt4/e;)Lt4/g;

    .line 34
    new-instance p1, Lcom/google/firebase/messaging/r;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/r;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p9, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized D()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->F(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj6/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lj6/a;->getToken()Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/q0$a;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->G(Lcom/google/firebase/messaging/q0$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->D()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;)Lt4/g;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->u(Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;)Lt4/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;Ljava/lang/String;)Lt4/g;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->v(Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;Ljava/lang/String;)Lt4/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->z()V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/v0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->y(Lcom/google/firebase/messaging/v0;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->x()V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/messaging/FirebaseMessaging;Lt4/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->w(Lt4/h;)V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/messaging/FirebaseMessaging;)Lcom/google/firebase/d;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    return-object p0
.end method

.method static declared-synchronized getInstance(Lcom/google/firebase/d;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .param p0    # Lcom/google/firebase/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/d;->i(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-string v1, "Firebase Messaging component is not present"

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic h(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->E()V

    return-void
.end method

.method public static declared-synchronized l()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/firebase/d;->l()Lcom/google/firebase/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lcom/google/firebase/d;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized m(Landroid/content/Context;)Lcom/google/firebase/messaging/q0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Lcom/google/firebase/messaging/q0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/firebase/messaging/q0;

    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/q0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Lcom/google/firebase/messaging/q0;

    .line 3
    :cond_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->p:Lcom/google/firebase/messaging/q0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    invoke-virtual {v0}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    invoke-virtual {v0}, Lcom/google/firebase/d;->p()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static q()Ll1/f;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->q:Ll1/f;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    invoke-virtual {v0}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking onNewToken for app: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    invoke-virtual {v2}, Lcom/google/firebase/d;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    new-instance p1, Lcom/google/firebase/messaging/l;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/l;->i(Landroid/content/Intent;)Lt4/g;

    :cond_1
    return-void
.end method

.method private synthetic u(Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;)Lt4/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/z;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/z;->e()Lt4/g;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/v;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/messaging/v;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lt4/g;->p(Ljava/util/concurrent/Executor;Lt4/f;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method private synthetic v(Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;Ljava/lang/String;)Lt4/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->m(Landroid/content/Context;)Lcom/google/firebase/messaging/q0;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/e0;

    invoke-virtual {v2}, Lcom/google/firebase/messaging/e0;->a()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/google/firebase/messaging/q0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p2, Lcom/google/firebase/messaging/q0$a;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->r(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p3}, Lt4/j;->e(Ljava/lang/Object;)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method private synthetic w(Lt4/h;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lt4/h;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p1, v0}, Lt4/h;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private synthetic x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->E()V

    :cond_0
    return-void
.end method

.method private synthetic y(Lcom/google/firebase/messaging/v0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/messaging/v0;->o()V

    :cond_0
    return-void
.end method

.method private synthetic z()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/i0;->c(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->f(Z)V

    return-void
.end method

.method public B(Z)Lt4/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lt4/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/i0;->e(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lt4/g;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized C(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized F(J)V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x1e

    const-wide/16 v2, 0x2

    mul-long v2, v2, p1

    .line 1
    :try_start_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->o:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 2
    new-instance v2, Lcom/google/firebase/messaging/r0;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/r0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method G(Lcom/google/firebase/messaging/q0$a;)Z
    .locals 1
    .param p1    # Lcom/google/firebase/messaging/q0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/e0;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/e0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/q0$a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method i()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj6/a;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lj6/a;->a()Lt4/g;

    move-result-object v0

    invoke-static {v0}, Lt4/j;->a(Lt4/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p()Lcom/google/firebase/messaging/q0$a;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->G(Lcom/google/firebase/messaging/q0$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v0, v0, Lcom/google/firebase/messaging/q0$a;->a:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    invoke-static {v1}, Lcom/google/firebase/messaging/e0;->c(Lcom/google/firebase/d;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/m0;

    new-instance v3, Lcom/google/firebase/messaging/p;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/messaging/p;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/q0$a;)V

    .line 9
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/messaging/m0;->b(Ljava/lang/String;Lcom/google/firebase/messaging/m0$a;)Lt4/g;

    move-result-object v0

    .line 10
    :try_start_1
    invoke-static {v0}, Lt4/j;->a(Lt4/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 11
    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method j(Ljava/lang/Runnable;J)V
    .locals 5

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->r:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lf4/a;

    const-string v4, "TAG"

    invoke-direct {v3, v4}, Lf4/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    :cond_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->r:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method k()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    return-object v0
.end method

.method public o()Lt4/g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt4/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj6/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lj6/a;->a()Lt4/g;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lt4/h;

    invoke-direct {v0}, Lt4/h;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/t;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lt4/h;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Lt4/h;->a()Lt4/g;

    move-result-object v0

    return-object v0
.end method

.method p()Lcom/google/firebase/messaging/q0$a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->m(Landroid/content/Context;)Lcom/google/firebase/messaging/q0;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lcom/google/firebase/d;

    invoke-static {v2}, Lcom/google/firebase/messaging/e0;->c(Lcom/google/firebase/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/q0;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/q0$a;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c()Z

    move-result v0

    return v0
.end method

.method t()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Lcom/google/firebase/messaging/e0;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/e0;->g()Z

    move-result v0

    return v0
.end method
