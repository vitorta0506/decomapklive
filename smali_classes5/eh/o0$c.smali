.class final Leh/o0$c;
.super Lio/grpc/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private a:Leh/s1$d;

.field private final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Lio/grpc/k$a;


# direct methods
.method private constructor <init>(Leh/s1$d;Ljava/util/concurrent/atomic/AtomicLong;Lio/grpc/k$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/k$a;-><init>()V

    const-string v0, "stats"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/s1$d;

    iput-object p1, p0, Leh/o0$c;->a:Leh/s1$d;

    const-string p1, "inFlights"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Leh/o0$c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-object p3, p0, Leh/o0$c;->c:Lio/grpc/k$a;

    return-void
.end method

.method synthetic constructor <init>(Leh/s1$d;Ljava/util/concurrent/atomic/AtomicLong;Lio/grpc/k$a;Leh/o0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Leh/o0$c;-><init>(Leh/s1$d;Ljava/util/concurrent/atomic/AtomicLong;Lio/grpc/k$a;)V

    return-void
.end method

.method static synthetic b(Leh/o0$c;)Leh/s1$d;
    .locals 0

    iget-object p0, p0, Leh/o0$c;->a:Leh/s1$d;

    return-object p0
.end method

.method static synthetic c(Leh/o0$c;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Leh/o0$c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
    .locals 1

    .line 1
    iget-object v0, p0, Leh/o0$c;->a:Leh/s1$d;

    invoke-virtual {v0}, Leh/s1$d;->c()V

    .line 2
    iget-object v0, p0, Leh/o0$c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 3
    iget-object v0, p0, Leh/o0$c;->c:Lio/grpc/k$a;

    if-nez v0, :cond_0

    .line 4
    new-instance p1, Leh/o0$c$a;

    invoke-direct {p1, p0}, Leh/o0$c$a;-><init>(Leh/o0$c;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/grpc/k$a;->a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;

    move-result-object p1

    .line 6
    new-instance p2, Leh/o0$c$b;

    invoke-direct {p2, p0, p1}, Leh/o0$c$b;-><init>(Leh/o0$c;Lio/grpc/k;)V

    return-object p2
.end method
