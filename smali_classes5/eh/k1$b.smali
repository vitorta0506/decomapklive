.class final Leh/k1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/k1;->b(Leh/l1$b;Leh/l1$b;Lio/grpc/n0$f;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lio/grpc/Status;

.field final synthetic c:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic d:Leh/k1;


# direct methods
.method constructor <init>(Leh/k1;Ljava/lang/Long;Lio/grpc/Status;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/k1$b;->d:Leh/k1;

    iput-object p2, p0, Leh/k1$b;->a:Ljava/lang/Long;

    iput-object p3, p0, Leh/k1$b;->b:Lio/grpc/Status;

    iput-object p4, p0, Leh/k1$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 3
    iget-object v0, p0, Leh/k1$b;->a:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Leh/k1$b;->b:Lio/grpc/Status;

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Leh/k1$d;

    iget-object p3, p0, Leh/k1$b;->d:Leh/k1;

    invoke-direct {p1, p3, v0, v5}, Leh/k1$d;-><init>(Leh/k1;Lio/grpc/Status;Ljava/util/concurrent/Executor;)V

    invoke-static {p1}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Lcom/google/common/base/w;

    move-result-object p1

    move-object v8, p1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Leh/k1$b$a;

    invoke-direct {v0, p0, p3, p1, p2}, Leh/k1$b$a;-><init>(Leh/k1$b;Lio/grpc/d;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V

    move-object v8, v0

    .line 7
    :goto_0
    new-instance p1, Leh/k1$c;

    iget-object v2, p0, Leh/k1$b;->d:Leh/k1;

    iget-object p3, p0, Leh/k1$b;->a:Ljava/lang/Long;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v6, p0, Leh/k1$b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p2}, Lio/grpc/c;->d()Lio/grpc/t;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Leh/k1$c;-><init>(Leh/k1;JLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;Lcom/google/common/base/w;)V

    .line 9
    new-instance p2, Leh/k1$b$b;

    invoke-direct {p2, p0, p1}, Leh/k1$b$b;-><init>(Leh/k1$b;Leh/k1$c;)V

    return-object p2

    .line 10
    :cond_2
    new-instance p1, Leh/k1$d;

    iget-object p2, p0, Leh/k1$b;->d:Leh/k1;

    iget-object p3, p0, Leh/k1$b;->b:Lio/grpc/Status;

    invoke-direct {p1, p2, p3, v5}, Leh/k1$d;-><init>(Leh/k1;Lio/grpc/Status;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method
