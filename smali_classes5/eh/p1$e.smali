.class final Leh/p1$e;
.super Lio/grpc/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/k$a;-><init>()V

    const-string v0, "inFlights"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Leh/p1$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Leh/p1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leh/p1$e;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method static synthetic b(Leh/p1$e;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Leh/p1$e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
    .locals 0

    new-instance p1, Leh/p1$e$a;

    invoke-direct {p1, p0}, Leh/p1$e$a;-><init>(Leh/p1$e;)V

    return-object p1
.end method
