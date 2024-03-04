.class public final Lug/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lug/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/x<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Throwable;

.field private final e:Lug/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/r<",
            "Lug/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lug/j;


# direct methods
.method public constructor <init>(Lug/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lug/y$a;

    invoke-direct {v0, p0}, Lug/y$a;-><init>(Lug/y;)V

    iput-object v0, p0, Lug/y;->e:Lug/r;

    const-string v0, "executor"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lug/j;

    iput-object p1, p0, Lug/y;->f:Lug/j;

    return-void
.end method

.method static synthetic a(Lug/y;)Lug/j;
    .locals 0

    iget-object p0, p0, Lug/y;->f:Lug/j;

    return-object p0
.end method

.method static synthetic b(Lug/y;)I
    .locals 0

    iget p0, p0, Lug/y;->b:I

    return p0
.end method

.method static synthetic c(Lug/y;)I
    .locals 1

    iget v0, p0, Lug/y;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lug/y;->b:I

    return v0
.end method

.method static synthetic d(Lug/y;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lug/y;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method static synthetic e(Lug/y;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, Lug/y;->d:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic f(Lug/y;)I
    .locals 0

    iget p0, p0, Lug/y;->a:I

    return p0
.end method

.method static synthetic g(Lug/y;)Lug/x;
    .locals 0

    iget-object p0, p0, Lug/y;->c:Lug/x;

    return-object p0
.end method

.method static synthetic h(Lug/y;)Z
    .locals 0

    invoke-direct {p0}, Lug/y;->n()Z

    move-result p0

    return p0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lug/y;->c:Lug/x;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding promises is not allowed after finished adding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lug/y;->f:Lug/j;

    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from EventExecutor thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lug/y;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lug/y;->c:Lug/x;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lug/x;->B(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lug/y;->c:Lug/x;

    invoke-interface {v1, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public i(Lug/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lug/y;->k()V

    .line 2
    invoke-direct {p0}, Lug/y;->l()V

    .line 3
    iget v0, p0, Lug/y;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lug/y;->a:I

    .line 4
    iget-object v0, p0, Lug/y;->e:Lug/r;

    invoke-interface {p1, v0}, Lug/q;->c(Lug/r;)Lug/q;

    return-void
.end method

.method public j(Lug/x;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lug/y;->i(Lug/q;)V

    return-void
.end method

.method public m(Lug/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/x<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aggregatePromise"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lug/y;->l()V

    .line 3
    iget-object v0, p0, Lug/y;->c:Lug/x;

    if-nez v0, :cond_1

    .line 4
    iput-object p1, p0, Lug/y;->c:Lug/x;

    .line 5
    iget p1, p0, Lug/y;->b:I

    iget v0, p0, Lug/y;->a:I

    if-ne p1, v0, :cond_0

    .line 6
    invoke-direct {p0}, Lug/y;->n()Z

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already finished"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
