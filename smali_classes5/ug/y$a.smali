.class Lug/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lug/r<",
        "Lug/q<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lug/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lug/y;)V
    .locals 0

    iput-object p1, p0, Lug/y$a;->a:Lug/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lug/y$a;Lug/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lug/y$a;->b(Lug/q;)V

    return-void
.end method

.method private b(Lug/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/y$a;->a:Lug/y;

    invoke-static {v0}, Lug/y;->c(Lug/y;)I

    .line 2
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lug/y$a;->a:Lug/y;

    invoke-static {v0}, Lug/y;->d(Lug/y;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lug/y$a;->a:Lug/y;

    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, p1}, Lug/y;->e(Lug/y;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    :cond_0
    iget-object p1, p0, Lug/y$a;->a:Lug/y;

    invoke-static {p1}, Lug/y;->b(Lug/y;)I

    move-result p1

    iget-object v0, p0, Lug/y$a;->a:Lug/y;

    invoke-static {v0}, Lug/y;->f(Lug/y;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lug/y$a;->a:Lug/y;

    invoke-static {p1}, Lug/y;->g(Lug/y;)Lug/x;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lug/y$a;->a:Lug/y;

    invoke-static {p1}, Lug/y;->h(Lug/y;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/q<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lug/y$a;->a:Lug/y;

    invoke-static {v0}, Lug/y;->a(Lug/y;)Lug/j;

    move-result-object v0

    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lug/y$a;->b(Lug/q;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lug/y$a;->a:Lug/y;

    invoke-static {v0}, Lug/y;->a(Lug/y;)Lug/j;

    move-result-object v0

    new-instance v1, Lug/y$a$a;

    invoke-direct {v1, p0, p1}, Lug/y$a$a;-><init>(Lug/y$a;Lug/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
