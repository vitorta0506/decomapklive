.class Lhg/c$c;
.super Lio/grpc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field final synthetic c:Lhg/c;


# direct methods
.method private constructor <init>(Lhg/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhg/c$c;->c:Lhg/c;

    invoke-direct {p0}, Lio/grpc/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhg/c;Lhg/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lhg/c$c;-><init>(Lhg/c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhg/c$c;->b:Z

    return-void
.end method

.method public i(Lio/grpc/Status;)V
    .locals 1

    .line 1
    invoke-static {}, Lhg/c;->b()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p1

    iget-object v0, p0, Lhg/c$c;->c:Lhg/c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 2
    iget-boolean p1, p0, Lhg/c$c;->a:Z

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lhg/c;->c()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p1

    iget-object v0, p0, Lhg/c$c;->c:Lhg/c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 4
    :cond_0
    iget-boolean p1, p0, Lhg/c$c;->b:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lhg/c;->d()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p1

    iget-object v0, p0, Lhg/c$c;->c:Lhg/c;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhg/c$c;->b:Z

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhg/c$c;->a:Z

    return-void
.end method
