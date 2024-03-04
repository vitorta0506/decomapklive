.class final Lde/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/d;


# direct methods
.method constructor <init>(Lde/d;)V
    .locals 0

    iput-object p1, p0, Lde/d$b;->a:Lde/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lde/d$b;->a:Lde/d;

    invoke-static {v0}, Lde/d;->a(Lde/d;)Lde/a;

    move-result-object v0

    invoke-interface {v0}, Lde/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lde/d$b;->a:Lde/d;

    invoke-static {v1}, Lde/d;->d(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object v0, p0, Lde/d$b;->a:Lde/d;

    invoke-static {v0}, Lde/d;->i(Lde/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lde/d$b;->a:Lde/d;

    invoke-static {v1}, Lde/d;->h(Lde/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lde/d$b;->a:Lde/d;

    .line 5
    invoke-static {v2}, Lde/d;->g(Lde/d;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
