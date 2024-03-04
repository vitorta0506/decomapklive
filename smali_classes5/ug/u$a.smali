.class Lug/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/u;-><init>(ILjava/util/concurrent/Executor;Lug/k;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lug/r;"
    }
.end annotation


# instance fields
.field final synthetic a:Lug/u;


# direct methods
.method constructor <init>(Lug/u;)V
    .locals 0

    iput-object p1, p0, Lug/u$a;->a:Lug/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lug/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/q<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lug/u$a;->a:Lug/u;

    invoke-static {p1}, Lug/u;->d(Lug/u;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lug/u$a;->a:Lug/u;

    invoke-static {v0}, Lug/u;->f(Lug/u;)[Lug/j;

    move-result-object v0

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lug/u$a;->a:Lug/u;

    invoke-static {p1}, Lug/u;->g(Lug/u;)Lug/x;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    :cond_0
    return-void
.end method
