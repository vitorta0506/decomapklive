.class final Lde/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/d;->push(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lde/d;


# direct methods
.method constructor <init>(Lde/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lde/d$c;->b:Lde/d;

    iput-object p2, p0, Lde/d$c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v0}, Lde/d;->d(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v0

    new-instance v1, Lde/f;

    iget-object v2, p0, Lde/d$c;->a:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lde/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v0}, Lde/d;->j(Lde/d;)V

    .line 3
    iget-object v0, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v0}, Lde/d;->d(Lde/d;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    iget-object v1, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v1}, Lde/d;->k(Lde/d;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lde/d$c;->b:Lde/d;

    invoke-virtual {v0}, Lde/d;->e()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v0}, Lde/d;->i(Lde/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v0}, Lde/d;->i(Lde/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lde/d$c;->b:Lde/d;

    invoke-static {v1}, Lde/d;->h(Lde/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lde/d$c;->b:Lde/d;

    .line 7
    invoke-static {v2}, Lde/d;->g(Lde/d;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7530

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
