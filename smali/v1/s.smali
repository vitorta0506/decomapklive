.class public Lv1/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lw1/d;

.field private final c:Lv1/u;

.field private final d:Lx1/a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lw1/d;Lv1/u;Lx1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/s;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lv1/s;->b:Lw1/d;

    .line 4
    iput-object p3, p0, Lv1/s;->c:Lv1/u;

    .line 5
    iput-object p4, p0, Lv1/s;->d:Lx1/a;

    return-void
.end method

.method public static synthetic a(Lv1/s;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lv1/s;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lv1/s;)V
    .locals 0

    invoke-direct {p0}, Lv1/s;->e()V

    return-void
.end method

.method private synthetic d()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lv1/s;->b:Lw1/d;

    invoke-interface {v0}, Lw1/d;->H()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/o;

    .line 2
    iget-object v2, p0, Lv1/s;->c:Lv1/u;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lv1/u;->b(Ln1/o;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic e()V
    .locals 2

    iget-object v0, p0, Lv1/s;->d:Lx1/a;

    new-instance v1, Lv1/r;

    invoke-direct {v1, p0}, Lv1/r;-><init>(Lv1/s;)V

    invoke-interface {v0, v1}, Lx1/a;->b(Lx1/a$a;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lv1/s;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lv1/q;

    invoke-direct {v1, p0}, Lv1/q;-><init>(Lv1/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
