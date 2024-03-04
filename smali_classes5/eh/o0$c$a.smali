.class Leh/o0$c$a;
.super Lio/grpc/k;
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
.field final synthetic a:Leh/o0$c;


# direct methods
.method constructor <init>(Leh/o0$c;)V
    .locals 0

    iput-object p1, p0, Leh/o0$c$a;->a:Leh/o0$c;

    invoke-direct {p0}, Lio/grpc/k;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lio/grpc/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/o0$c$a;->a:Leh/o0$c;

    invoke-static {v0}, Leh/o0$c;->b(Leh/o0$c;)Leh/s1$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Leh/s1$d;->b(Lio/grpc/Status;)V

    .line 2
    iget-object p1, p0, Leh/o0$c$a;->a:Leh/o0$c;

    invoke-static {p1}, Leh/o0$c;->c(Leh/o0$c;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    return-void
.end method
