.class Lm5/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/q0;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lio/grpc/q0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lm5/j$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lm5/j$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lm5/j$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lm5/j$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object p1, p0, Lm5/j$c;->a:Lio/grpc/q0;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/q0;Lm5/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/j$c;-><init>(Lio/grpc/q0;)V

    return-void
.end method

.method static synthetic a(Lm5/j$c;)Lio/grpc/q0;
    .locals 0

    iget-object p0, p0, Lm5/j$c;->a:Lio/grpc/q0;

    return-object p0
.end method

.method static synthetic b(Lm5/j$c;)V
    .locals 0

    invoke-direct {p0}, Lm5/j$c;->g()V

    return-void
.end method

.method static synthetic c(Lm5/j$c;)Z
    .locals 0

    invoke-direct {p0}, Lm5/j$c;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lm5/j$c;)V
    .locals 0

    invoke-direct {p0}, Lm5/j$c;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm5/j$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget-object v0, p0, Lm5/j$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm5/j$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lm5/j$c;->i()V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bug: reference count is negative!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/j$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lm5/j$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lm5/j$c;->i()V

    :cond_0
    return-void
.end method

.method private h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lm5/j$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2
    iget-object v1, p0, Lm5/j$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lm5/j$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    :cond_0
    iget-object v0, p0, Lm5/j$c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lm5/j$c;->f()V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/j$c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm5/j$c;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Lio/grpc/q0;->m()Lio/grpc/q0;

    :cond_0
    return-void
.end method


# virtual methods
.method e()I
    .locals 2

    iget-object v0, p0, Lm5/j$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lm5/j$c;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    return v0
.end method
