.class Leh/p1$e$a;
.super Lio/grpc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/p1$e;->a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/p1$e;


# direct methods
.method constructor <init>(Leh/p1$e;)V
    .locals 0

    iput-object p1, p0, Leh/p1$e$a;->a:Leh/p1$e;

    invoke-direct {p0}, Lio/grpc/k;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lio/grpc/Status;)V
    .locals 0

    iget-object p1, p0, Leh/p1$e$a;->a:Leh/p1$e;

    invoke-static {p1}, Leh/p1$e;->b(Leh/p1$e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public m(Lio/grpc/a;Lio/grpc/s0;)V
    .locals 0

    iget-object p1, p0, Leh/p1$e$a;->a:Leh/p1$e;

    invoke-static {p1}, Leh/p1$e;->b(Leh/p1$e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method
