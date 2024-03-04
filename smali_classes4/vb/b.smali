.class public Lvb/b;
.super Lrb/d;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lub/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lrb/d;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/String;


# instance fields
.field private final a:Lrb/e;

.field private final b:Lvb/d;

.field private final c:Lvb/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvb/b;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvb/b;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lrb/e;)V
    .locals 3

    invoke-direct {p0}, Lrb/d;-><init>()V

    iput-object p1, p0, Lvb/b;->a:Lrb/e;

    sget-object v0, Lvb/b;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "AGConnectInstance"

    const-string v1, "please call `initialize()` first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lvb/d;

    sget-object v1, Lvb/b;->d:Ljava/util/List;

    invoke-interface {p1}, Lrb/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lvb/d;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lvb/b;->b:Lvb/d;

    new-instance v0, Lvb/d;

    const/4 v1, 0x0

    invoke-interface {p1}, Lrb/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lvb/d;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lvb/b;->c:Lvb/d;

    instance-of v1, p1, Ltb/d;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ltb/d;

    invoke-virtual {v1}, Ltb/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lrb/e;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lvb/d;->c(Ljava/util/List;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static f()Lrb/d;
    .locals 1

    sget-object v0, Lvb/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "DEFAULT_INSTANCE"

    :cond_0
    invoke-static {v0}, Lvb/b;->g(Ljava/lang/String;)Lrb/d;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lrb/d;
    .locals 5

    sget-object v0, Lvb/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvb/b;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrb/d;

    if-nez v1, :cond_1

    const-string v2, "DEFAULT_INSTANCE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "AGC_Instance"

    const-string v2, "please call `initialize()` first"

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "AGC_Instance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not find instance for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h(Lrb/e;)Lrb/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lvb/b;->i(Lrb/e;Z)Lrb/d;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lrb/e;Z)Lrb/d;
    .locals 3

    sget-object v0, Lvb/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvb/b;->f:Ljava/util/Map;

    invoke-interface {p0}, Lrb/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrb/d;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v2, Lvb/b;

    invoke-direct {v2, p0}, Lvb/b;-><init>(Lrb/e;)V

    invoke-interface {p0}, Lrb/e;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lvb/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvb/b;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string p0, "AGC_Instance"

    const-string v1, "Repeated invoking initialize"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lsb/a;->d(Landroid/content/Context;)Lsb/a;

    move-result-object v1

    invoke-static {p0, v1}, Lvb/b;->k(Landroid/content/Context;Lrb/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized k(Landroid/content/Context;Lrb/e;)V
    .locals 3

    const-class v0, Lvb/b;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "AGC_Instance"

    const-string v2, "context.getApplicationContext null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-static {}, Lvb/b;->l()V

    invoke-static {}, Lvb/b;->m()V

    invoke-static {p0}, Ltb/c;->a(Landroid/content/Context;)Lrb/c;

    sget-object v1, Lvb/b;->d:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Lvb/c;

    invoke-direct {v1, p0}, Lvb/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lvb/c;->a()Ljava/util/List;

    move-result-object p0

    sput-object p0, Lvb/b;->d:Ljava/util/List;

    :cond_1
    const/4 p0, 0x1

    invoke-static {p1, p0}, Lvb/b;->i(Lrb/e;Z)Lrb/d;

    invoke-interface {p1}, Lrb/e;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lvb/b;->g:Ljava/lang/String;

    const-string p0, "AGC_Instance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGC SDK initialize end, default route:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lrb/e;->c()Lrb/b;

    move-result-object p1

    invoke-virtual {p1}, Lrb/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lvb/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static l()V
    .locals 2

    new-instance v0, Lvb/b$a;

    invoke-direct {v0}, Lvb/b$a;-><init>()V

    const-string v1, "/agcgw/url"

    invoke-static {v1, v0}, Lrb/g;->b(Ljava/lang/String;Lrb/g$a;)V

    new-instance v0, Lvb/b$b;

    invoke-direct {v0}, Lvb/b$b;-><init>()V

    const-string v1, "/agcgw/backurl"

    invoke-static {v1, v0}, Lrb/g;->b(Ljava/lang/String;Lrb/g$a;)V

    return-void
.end method

.method private static m()V
    .locals 2

    new-instance v0, Lvb/b$c;

    invoke-direct {v0}, Lvb/b$c;-><init>()V

    const-string v1, "/service/analytics/collector_url"

    invoke-static {v1, v0}, Lrb/g;->b(Ljava/lang/String;Lrb/g$a;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lvb/b;->a:Lrb/e;

    invoke-interface {v0}, Lrb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public d()Lrb/e;
    .locals 1

    iget-object v0, p0, Lvb/b;->a:Lrb/e;

    return-object v0
.end method
