.class Lcom/google/api/gax/tracing/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gax/tracing/d;->a(Lcom/google/api/gax/rpc/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/gax/rpc/e0;

.field final synthetic b:Lcom/google/api/gax/tracing/d;


# direct methods
.method constructor <init>(Lcom/google/api/gax/tracing/d;Lcom/google/api/gax/rpc/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/tracing/d$a;->b:Lcom/google/api/gax/tracing/d;

    iput-object p2, p0, Lcom/google/api/gax/tracing/d$a;->a:Lcom/google/api/gax/rpc/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/tracing/d$a;->b:Lcom/google/api/gax/tracing/d;

    invoke-static {v0}, Lcom/google/api/gax/tracing/d;->b(Lcom/google/api/gax/tracing/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/api/gax/tracing/d$a;->a:Lcom/google/api/gax/rpc/e0;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/e0;->cancel()V

    return-void
.end method
