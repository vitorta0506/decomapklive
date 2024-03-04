.class public abstract Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/d$a;,
        Lcom/google/android/gms/common/internal/d$b;,
        Lcom/google/android/gms/common/internal/d$d;,
        Lcom/google/android/gms/common/internal/d$c;,
        Lcom/google/android/gms/common/internal/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final D:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final E:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private A:Z

.field private volatile B:Lcom/google/android/gms/common/internal/zzj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected C:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private volatile f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field g:Lcom/google/android/gms/common/internal/t1;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/Looper;

.field private final j:Lcom/google/android/gms/common/internal/g;

.field private final k:Lcom/google/android/gms/common/b;

.field final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:Lcom/google/android/gms/common/internal/l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected p:Lcom/google/android/gms/common/internal/d$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private q:Landroid/os/IInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;

.field private s:Lcom/google/android/gms/common/internal/e1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:I

.field private final u:Lcom/google/android/gms/common/internal/d$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final v:Lcom/google/android/gms/common/internal/d$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final w:I

.field private final x:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private volatile y:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Lcom/google/android/gms/common/ConnectionResult;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v0, Lcom/google/android/gms/common/internal/d;->E:[Lcom/google/android/gms/common/Feature;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/d;->D:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/internal/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/internal/d$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/g;->b(Landroid/content/Context;)Lcom/google/android/gms/common/internal/g;

    move-result-object v3

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/b;->f()Lcom/google/android/gms/common/b;

    move-result-object v4

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p5}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/d$a;Lcom/google/android/gms/common/internal/d$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/internal/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/common/internal/d$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/common/internal/d$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzj;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->i:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 10
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    const-string p1, "API availability must not be null"

    .line 11
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/d;->k:Lcom/google/android/gms/common/b;

    new-instance p1, Lcom/google/android/gms/common/internal/b1;

    .line 12
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/b1;-><init>(Lcom/google/android/gms/common/internal/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/d;->w:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/d;->u:Lcom/google/android/gms/common/internal/d$a;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/d;->v:Lcom/google/android/gms/common/internal/d$b;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/d;->x:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic Q(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static bridge synthetic R(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->u:Lcom/google/android/gms/common/internal/d$a;

    return-object p0
.end method

.method static bridge synthetic S(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->v:Lcom/google/android/gms/common/internal/d$b;

    return-object p0
.end method

.method static bridge synthetic T(Lcom/google/android/gms/common/internal/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic V(Lcom/google/android/gms/common/internal/d;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic W(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->z:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method static bridge synthetic X(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/internal/l;

    return-void
.end method

.method static bridge synthetic Y(Lcom/google/android/gms/common/internal/d;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    return-void
.end method

.method static bridge synthetic Z(Lcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/internal/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->P()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Lcom/google/android/gms/common/internal/zzj;->d:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    invoke-static {}, Lcom/google/android/gms/common/internal/q;->b()Lcom/google/android/gms/common/internal/q;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->R()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/q;->c(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic a0(Lcom/google/android/gms/common/internal/d;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/d;->t:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic c0(Lcom/google/android/gms/common/internal/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    return p0
.end method

.method static bridge synthetic d0(Lcom/google/android/gms/common/internal/d;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    .line 3
    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic e0(Lcom/google/android/gms/common/internal/d;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/d;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->B()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method

.method private final f0(ILandroid/os/IInterface;)V
    .locals 12
    .param p2    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-nez p2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    .line 1
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/p;->a(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->q:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    .line 2
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/d;->H(Landroid/os/IInterface;)V

    goto/16 :goto_4

    .line 3
    :cond_4
    iget-object v9, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/e1;

    if-eqz v9, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->b()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->a()I

    move-result v8

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->U()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->d()Z

    move-result v11

    .line 11
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/common/internal/g;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Lcom/google/android/gms/common/internal/e1;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/e1;-><init>(Lcom/google/android/gms/common/internal/d;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/e1;

    iget p2, p0, Lcom/google/android/gms/common/internal/d;->t:I

    if-ne p2, v4, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->y()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/google/android/gms/common/internal/t1;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->v()Landroid/content/Context;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->y()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Lcom/google/android/gms/common/internal/g;->a()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/t1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    .line 17
    :cond_6
    new-instance p2, Lcom/google/android/gms/common/internal/t1;

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->D()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->C()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/common/internal/g;->a()I

    move-result v8

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->F()Z

    move-result v9

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/t1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 21
    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/t1;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->k()I

    move-result p2

    const v0, 0x1110e58

    if-lt p2, v0, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/t1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/t1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/t1;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/t1;->a()I

    move-result v4

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->U()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 31
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/t1;->d()Z

    move-result v6

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->t()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 33
    new-instance v8, Lcom/google/android/gms/common/internal/m1;

    invoke-direct {v8, v0, v2, v4, v6}, Lcom/google/android/gms/common/internal/m1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 34
    invoke-virtual {p2, v8, p1, v5, v7}, Lcom/google/android/gms/common/internal/g;->f(Lcom/google/android/gms/common/internal/m1;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/t1;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GmsClient"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 39
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/android/gms/common/internal/d;->b0(ILandroid/os/Bundle;I)V

    goto :goto_4

    .line 40
    :cond_9
    iget-object v8, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/e1;

    if-eqz v8, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/common/internal/d;->j:Lcom/google/android/gms/common/internal/g;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->b()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->a()I

    move-result v7

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->U()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/t1;->d()Z

    move-result v10

    .line 46
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/internal/g;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/d;->s:Lcom/google/android/gms/common/internal/e1;

    .line 47
    :cond_a
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final A()Landroid/os/IInterface;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->o()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->q:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract B()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected abstract C()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected D()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public E()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->d:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object v0
.end method

.method protected F()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->k()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public G()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected H(Landroid/os/IInterface;)V
    .locals 2
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/d;->c:J

    return-void
.end method

.method protected I(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->I()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/d;->d:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/d;->e:J

    return-void
.end method

.method protected J(I)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/common/internal/d;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/d;->b:J

    return-void
.end method

.method protected K(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/internal/f1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/f1;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 2
    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public M(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->y:Ljava/lang/String;

    return-void
.end method

.method public N(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected O(Lcom/google/android/gms/common/internal/d$c;ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/internal/d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->p:Lcom/google/android/gms/common/internal/d$c;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final U()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->disconnect()V

    return-void
.end method

.method protected final b0(ILandroid/os/Bundle;I)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/d;->l:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/internal/g1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/internal/g1;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->g:Lcom/google/android/gms/common/internal/t1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/t1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/google/android/gms/common/internal/d$c;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/internal/d$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->p:Lcom/google/android/gms/common/internal/d$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    return-void
.end method

.method public disconnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/c1;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/c1;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->r:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/internal/l;

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Lcom/google/android/gms/common/internal/i;Ljava/util/Set;)V
    .locals 21
    .param p1    # Lcom/google/android/gms/common/internal/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/i;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->x()Landroid/os/Bundle;

    move-result-object v2

    new-instance v15, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v5, v1, Lcom/google/android/gms/common/internal/d;->w:I

    iget-object v14, v1, Lcom/google/android/gms/common/internal/d;->y:Ljava/lang/String;

    .line 2
    sget v6, Lcom/google/android/gms/common/b;->a:I

    sget-object v9, Lcom/google/android/gms/common/internal/GetServiceRequest;->n:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v13, Lcom/google/android/gms/common/internal/GetServiceRequest;->o:[Lcom/google/android/gms/common/Feature;

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v15

    move-object v12, v13

    move-object/from16 v19, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    .line 3
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    iput-object v3, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->d:Ljava/lang/String;

    iput-object v2, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->r()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    .line 7
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->e:Landroid/os/IBinder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->r()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    .line 11
    :cond_3
    :goto_0
    sget-object v0, Lcom/google/android/gms/common/internal/d;->E:[Lcom/google/android/gms/common/Feature;

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->i:[Lcom/google/android/gms/common/Feature;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->s()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->j:[Lcom/google/android/gms/common/Feature;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/internal/d;->P()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/google/android/gms/common/internal/GetServiceRequest;->m:Z

    :cond_4
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/common/internal/d;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/internal/l;

    if-eqz v0, :cond_5

    new-instance v3, Lcom/google/android/gms/common/internal/d1;

    iget-object v5, v1, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v3, v1, v5}, Lcom/google/android/gms/common/internal/d1;-><init>(Lcom/google/android/gms/common/internal/d;I)V

    .line 15
    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/common/internal/l;->j0(Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_1

    :cond_5
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    .line 16
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    .line 18
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    iget-object v2, v1, Lcom/google/android/gms/common/internal/d;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/google/android/gms/common/internal/d;->K(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_2
    move-exception v0

    .line 21
    throw v0

    :catch_3
    move-exception v0

    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    .line 22
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/d;->N(I)V

    return-void
.end method

.method public isConnected()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isConnecting()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/d;->t:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j(Lcom/google/android/gms/common/internal/d$e;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/d$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/d$e;->a()V

    return-void
.end method

.method public k()I
    .locals 1

    sget v0, Lcom/google/android/gms/common/b;->a:I

    return v0
.end method

.method public final l()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->B:Lcom/google/android/gms/common/internal/zzj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->b:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->k:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/b;->h(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/d;->f0(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/d$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/d$d;-><init>(Lcom/google/android/gms/common/internal/d;)V

    .line 3
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/d;->O(Lcom/google/android/gms/common/internal/d$c;ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/d$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/d$d;-><init>(Lcom/google/android/gms/common/internal/d;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/d;->d(Lcom/google/android/gms/common/internal/d$c;)V

    return-void
.end method

.method protected final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/d;->E:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected t()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final v()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->h:Landroid/content/Context;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/d;->w:I

    return v0
.end method

.method protected x()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected y()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected z()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
