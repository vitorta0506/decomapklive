.class Lcom/google/api/gax/tracing/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/tracing/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/m<",
        "TRequestT;>;"
    }
.end annotation


# instance fields
.field private final a:Lr5/a;

.field private final b:Lcom/google/api/gax/rpc/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/m<",
            "TRequestT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lr5/a;Lcom/google/api/gax/rpc/m;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr5/a;",
            "Lcom/google/api/gax/rpc/m<",
            "TRequestT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/tracing/b$b;->a:Lr5/a;

    .line 3
    iput-object p2, p0, Lcom/google/api/gax/tracing/b$b;->b:Lcom/google/api/gax/rpc/m;

    .line 4
    iput-object p3, p0, Lcom/google/api/gax/tracing/b$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/gax/rpc/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/tracing/b$b;->b:Lcom/google/api/gax/rpc/m;

    new-instance v1, Lcom/google/api/gax/tracing/b$c;

    iget-object v2, p0, Lcom/google/api/gax/tracing/b$b;->a:Lr5/a;

    iget-object v3, p0, Lcom/google/api/gax/tracing/b$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/google/api/gax/tracing/b$c;-><init>(Lr5/a;Lcom/google/api/gax/rpc/l;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/api/gax/tracing/b$a;)V

    invoke-interface {v0, v1}, Lcom/google/api/gax/rpc/m;->a(Lcom/google/api/gax/rpc/l;)V

    return-void
.end method
