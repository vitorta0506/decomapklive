.class public Lcn/jiguang/az/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcn/jiguang/az/g;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcn/jiguang/bd/a;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/az/g;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jiguang/az/g$1;

    invoke-direct {v0, p0}, Lcn/jiguang/az/g$1;-><init>(Lcn/jiguang/az/g;)V

    iput-object v0, p0, Lcn/jiguang/az/g;->d:Lcn/jiguang/bd/a;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/az/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/az/g;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcn/jiguang/az/g;
    .locals 2

    sget-object v0, Lcn/jiguang/az/g;->a:Lcn/jiguang/az/g;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/az/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/az/g;->a:Lcn/jiguang/az/g;

    if-nez v1, :cond_0

    new-instance v1, Lcn/jiguang/az/g;

    invoke-direct {v1}, Lcn/jiguang/az/g;-><init>()V

    sput-object v1, Lcn/jiguang/az/g;->a:Lcn/jiguang/az/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/jiguang/az/g;->a:Lcn/jiguang/az/g;

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/az/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/az/g;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/az/g;->e:J

    invoke-static {}, Lcn/jiguang/g/a;->A()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/jiguang/az/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/jiguang/az/a;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    const-string v0, "PeriodWorker"

    const-string v1, "periodTask..."

    invoke-static {v0, v1}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/az/g;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcn/jiguang/a/a;->a(Landroid/content/Context;ZJ)V

    invoke-static {}, Lcn/jiguang/az/b;->a()Lcn/jiguang/az/b;

    move-result-object v1

    const/16 v2, 0x13

    const-string v3, "periodTask"

    invoke-virtual {v1, p1, v2, v0, v3}, Lcn/jiguang/az/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    const-string v0, "periodtask"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/jiguang/az/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcn/jiguang/b/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcn/jiguang/ar/b;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcn/jiguang/az/g;->c:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/bd/b;->a()Lcn/jiguang/bd/b;

    move-result-object p1

    invoke-static {}, Lcn/jiguang/az/h;->a()Lcn/jiguang/az/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/az/h;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcn/jiguang/az/g;->d:Lcn/jiguang/bd/a;

    const/16 v3, 0x1f40

    invoke-virtual {p1, v3, v0, v1, v2}, Lcn/jiguang/bd/b;->a(IJLcn/jiguang/bd/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "PeriodWorker"

    const-string v1, "PeriodWorker resume"

    invoke-static {v0, v1}, Lcn/jiguang/as/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/jiguang/az/g;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/jiguang/az/g;->e:J

    invoke-static {}, Lcn/jiguang/az/h;->a()Lcn/jiguang/az/h;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/az/h;->f()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string p2, "schedule time is expired, execute now"

    invoke-static {v0, p2}, Lcn/jiguang/as/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jiguang/az/g;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/jiguang/az/g;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcn/jiguang/az/g;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/jiguang/az/g;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "need not change period task"

    invoke-static {v0, p1}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/az/g;->e:J

    iget-object v0, p0, Lcn/jiguang/az/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/az/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/bd/b;->a()Lcn/jiguang/bd/b;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/az/h;->a()Lcn/jiguang/az/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/az/h;->f()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iget-object v3, p0, Lcn/jiguang/az/g;->d:Lcn/jiguang/bd/a;

    const/16 v4, 0x1f40

    invoke-virtual {v0, v4, v1, v2, v3}, Lcn/jiguang/bd/b;->a(IJLcn/jiguang/bd/a;)V

    return-void
.end method
