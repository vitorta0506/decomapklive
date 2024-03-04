.class public Le8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Le8/a;


# instance fields
.field private a:Lcom/guochao/faceshow/views/g;

.field private b:Le8/b$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method static synthetic a(Le8/a;)Le8/b$b;
    .locals 0

    iget-object p0, p0, Le8/a;->b:Le8/b$b;

    return-object p0
.end method

.method static synthetic b(Le8/a;)Lcom/guochao/faceshow/views/g;
    .locals 0

    iget-object p0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    return-object p0
.end method

.method public static c()Le8/a;
    .locals 2

    .line 1
    sget-object v0, Le8/a;->c:Le8/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le8/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le8/a;->c:Le8/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le8/a;

    invoke-direct {v1}, Le8/a;-><init>()V

    sput-object v1, Le8/a;->c:Le8/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Le8/a;->c:Le8/a;

    return-object v0
.end method


# virtual methods
.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le8/a$a;

    const-wide/32 v3, 0xea60

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Le8/a$a;-><init>(Le8/a;JJ)V

    iput-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->isCancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    .line 4
    sput-object v0, Le8/a;->c:Le8/a;

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Le8/a;->a:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    :cond_0
    return-void
.end method

.method public setOnTimerChangeListener(Le8/b$b;)V
    .locals 0

    iput-object p1, p0, Le8/a;->b:Le8/b$b;

    return-void
.end method
