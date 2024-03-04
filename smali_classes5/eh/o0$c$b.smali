.class Leh/o0$c$b;
.super Lio/grpc/internal/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/o0$c;->a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/k;

.field final synthetic b:Leh/o0$c;


# direct methods
.method constructor <init>(Leh/o0$c;Lio/grpc/k;)V
    .locals 0

    iput-object p1, p0, Leh/o0$c$b;->b:Leh/o0$c;

    iput-object p2, p0, Leh/o0$c$b;->a:Lio/grpc/k;

    invoke-direct {p0}, Lio/grpc/internal/k0;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/o0$c$b;->b:Leh/o0$c;

    invoke-static {v0}, Leh/o0$c;->b(Leh/o0$c;)Leh/s1$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Leh/s1$d;->b(Lio/grpc/Status;)V

    .line 2
    iget-object v0, p0, Leh/o0$c$b;->b:Leh/o0$c;

    invoke-static {v0}, Leh/o0$c;->c(Leh/o0$c;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 3
    invoke-virtual {p0}, Leh/o0$c$b;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/c1;->i(Lio/grpc/Status;)V

    return-void
.end method

.method protected n()Lio/grpc/k;
    .locals 1

    iget-object v0, p0, Leh/o0$c$b;->a:Lio/grpc/k;

    return-object v0
.end method
