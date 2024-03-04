.class Lcom/google/common/util/concurrent/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/h0;->c(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lcom/google/common/util/concurrent/a;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/h0$a;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/h0$a;->b:Lcom/google/common/util/concurrent/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/h0$a;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/h0$a;->b:Lcom/google/common/util/concurrent/a;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/a;->S(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
