.class Leh/r2$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$c;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leh/r2$c;


# direct methods
.method constructor <init>(Leh/r2$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leh/r2$c$a;->b:Leh/r2$c;

    iput-object p2, p0, Leh/r2$c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/r2$c$a;->b:Leh/r2$c;

    iget-object v0, v0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v0}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Leh/r2$c$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/r2$b;

    iget-object v0, v0, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/r2$c$a;->b:Leh/r2$c;

    iget-object v0, v0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v0}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Leh/r2$c$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Leh/r2$c$a;->b:Leh/r2$c;

    iget-object v0, v0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v0}, Leh/r2;->k(Leh/r2;)V

    :cond_0
    return-void
.end method
