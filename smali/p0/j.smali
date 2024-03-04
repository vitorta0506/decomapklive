.class final Lp0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/j$e;,
        Lp0/j$d;,
        Lp0/j$c;
    }
.end annotation


# static fields
.field private static volatile d:Lp0/j;


# instance fields
.field private final a:Lp0/j$c;

.field final b:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lp0/j;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Lp0/j$a;

    invoke-direct {v0, p0, p1}, Lp0/j$a;-><init>(Lp0/j;Landroid/content/Context;)V

    .line 4
    invoke-static {v0}, Lv0/e;->a(Lv0/e$b;)Lv0/e$b;

    move-result-object v0

    .line 5
    new-instance v1, Lp0/j$b;

    invoke-direct {v1, p0}, Lp0/j$b;-><init>(Lp0/j;)V

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 7
    new-instance p1, Lp0/j$d;

    invoke-direct {p1, v0, v1}, Lp0/j$d;-><init>(Lv0/e$b;Lp0/a$a;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lp0/j$e;

    invoke-direct {v2, p1, v0, v1}, Lp0/j$e;-><init>(Landroid/content/Context;Lv0/e$b;Lp0/a$a;)V

    move-object p1, v2

    :goto_0
    iput-object p1, p0, Lp0/j;->a:Lp0/j$c;

    return-void
.end method

.method static a(Landroid/content/Context;)Lp0/j;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lp0/j;->d:Lp0/j;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lp0/j;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lp0/j;->d:Lp0/j;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lp0/j;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lp0/j;-><init>(Landroid/content/Context;)V

    sput-object v1, Lp0/j;->d:Lp0/j;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lp0/j;->d:Lp0/j;

    return-object p0
.end method

.method private b()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp0/j;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lp0/j;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lp0/j;->a:Lp0/j$c;

    invoke-interface {v0}, Lp0/j$c;->b()Z

    move-result v0

    iput-boolean v0, p0, Lp0/j;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private c()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp0/j;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp0/j;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lp0/j;->a:Lp0/j$c;

    invoke-interface {v0}, Lp0/j$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lp0/j;->c:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method declared-synchronized d(Lp0/a$a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lp0/j;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Lp0/j;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized e(Lp0/a$a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lp0/j;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Lp0/j;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
