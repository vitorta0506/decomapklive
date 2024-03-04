.class public Lcom/google/api/gax/tracing/b;
.super Lcom/google/api/gax/rpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/tracing/b$c;,
        Lcom/google/api/gax/tracing/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/h<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/tracing/ApiTracerFactory;

.field private final b:Lr5/d;

.field private final c:Lcom/google/api/gax/rpc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/h;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/tracing/ApiTracerFactory;",
            "Lr5/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/h;-><init>()V

    const-string v0, "tracerFactory can\'t be null"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/gax/tracing/ApiTracerFactory;

    iput-object p2, p0, Lcom/google/api/gax/tracing/b;->a:Lcom/google/api/gax/tracing/ApiTracerFactory;

    const-string p2, "spanName can\'t be null"

    .line 3
    invoke-static {p3, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr5/d;

    iput-object p2, p0, Lcom/google/api/gax/tracing/b;->b:Lr5/d;

    const-string p2, "innerCallable can\'t be null"

    .line 4
    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/h;

    iput-object p1, p0, Lcom/google/api/gax/tracing/b;->c:Lcom/google/api/gax/rpc/h;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Lcom/google/api/gax/rpc/m<",
            "TRequestT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/tracing/b;->a:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 2
    invoke-interface {p3}, Lcom/google/api/gax/rpc/a;->e()Lr5/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/gax/tracing/b;->b:Lr5/d;

    sget-object v3, Lcom/google/api/gax/tracing/ApiTracerFactory$OperationType;->BidiStreaming:Lcom/google/api/gax/tracing/ApiTracerFactory$OperationType;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/api/gax/tracing/ApiTracerFactory;->a(Lr5/a;Lr5/d;Lcom/google/api/gax/tracing/ApiTracerFactory$OperationType;)Lr5/a;

    move-result-object v0

    .line 3
    invoke-interface {p3, v0}, Lcom/google/api/gax/rpc/a;->d(Lr5/a;)Lcom/google/api/gax/rpc/a;

    move-result-object p3

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 5
    new-instance v2, Lcom/google/api/gax/tracing/d;

    invoke-direct {v2, v0, p1, v1}, Lcom/google/api/gax/tracing/d;-><init>(Lr5/a;Lcom/google/api/gax/rpc/b0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 6
    new-instance p1, Lcom/google/api/gax/tracing/b$b;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/api/gax/tracing/b$b;-><init>(Lr5/a;Lcom/google/api/gax/rpc/m;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/google/api/gax/tracing/b;->c:Lcom/google/api/gax/rpc/h;

    .line 8
    invoke-virtual {p2, v2, p1, p3}, Lcom/google/api/gax/rpc/h;->c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/api/gax/tracing/b$c;

    const/4 p3, 0x0

    invoke-direct {p2, v0, p1, v1, p3}, Lcom/google/api/gax/tracing/b$c;-><init>(Lr5/a;Lcom/google/api/gax/rpc/l;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/api/gax/tracing/b$a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 10
    invoke-interface {v0, p1}, Lr5/a;->a(Ljava/lang/Throwable;)V

    .line 11
    throw p1
.end method
