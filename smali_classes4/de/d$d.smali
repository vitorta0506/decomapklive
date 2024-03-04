.class final Lde/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lde/d;


# direct methods
.method constructor <init>(Lde/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lde/d$d;->b:Lde/d;

    iput-object p2, p0, Lde/d$d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Error;)V
    .locals 2

    iget-object v0, p0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->h(Lde/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lde/d$d$c;

    invoke-direct {v1, p0, p1}, Lde/d$d$c;-><init>(Lde/d$d;Ljava/lang/Error;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->h(Lde/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lde/d$d$b;

    invoke-direct {v1, p0}, Lde/d$d$b;-><init>(Lde/d$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 2

    iget-object v0, p0, Lde/d$d;->b:Lde/d;

    invoke-static {v0}, Lde/d;->h(Lde/d;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lde/d$d$a;

    invoke-direct {v1, p0}, Lde/d$d$a;-><init>(Lde/d$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
