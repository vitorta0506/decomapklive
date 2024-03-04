.class Lcom/google/api/gax/tracing/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/tracing/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/l<",
        "TRequestT;>;"
    }
.end annotation


# instance fields
.field private final a:Lr5/a;

.field private final b:Lcom/google/api/gax/rpc/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lr5/a;Lcom/google/api/gax/rpc/l;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr5/a;",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/api/gax/tracing/b$c;->a:Lr5/a;

    .line 4
    iput-object p2, p0, Lcom/google/api/gax/tracing/b$c;->b:Lcom/google/api/gax/rpc/l;

    .line 5
    iput-object p3, p0, Lcom/google/api/gax/tracing/b$c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lr5/a;Lcom/google/api/gax/rpc/l;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/api/gax/tracing/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/gax/tracing/b$c;-><init>(Lr5/a;Lcom/google/api/gax/rpc/l;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/api/gax/tracing/b$c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/api/gax/tracing/b$c;->b:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/l;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/tracing/b$c;->b:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/l;->b()V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/tracing/b$c;->a:Lr5/a;

    invoke-interface {v0}, Lr5/a;->e()V

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/tracing/b$c;->b:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/l;->c(Ljava/lang/Object;)V

    return-void
.end method
