.class final Lbh/a$c;
.super Ldh/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/n0$d;

.field private final b:Lio/grpc/d1;

.field c:Ljava/lang/String;

.field final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lbh/a$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lbh/a;


# direct methods
.method constructor <init>(Lbh/a;Lio/grpc/n0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbh/a$c;->e:Lbh/a;

    invoke-direct {p0}, Ldh/b;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lbh/a$c;->d:Ljava/util/HashSet;

    const-string p1, "delegate"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Lbh/a$c;->a:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {p2}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object p1

    const-string p2, "syncContext"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/d1;

    iput-object p1, p0, Lbh/a$c;->b:Lio/grpc/d1;

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/n0$b;)Lio/grpc/n0$h;
    .locals 7

    .line 1
    iget-object v0, p0, Lbh/a$c;->b:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    invoke-super {p0, p1}, Ldh/b;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object p1

    .line 3
    new-instance v0, Lbh/a$a;

    iget-object v2, p0, Lbh/a$c;->e:Lbh/a;

    iget-object v5, p0, Lbh/a$c;->b:Lio/grpc/d1;

    iget-object v1, p0, Lbh/a$c;->a:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {v1}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lbh/a$a;-><init>(Lbh/a;Lbh/a$c;Lio/grpc/n0$h;Lio/grpc/d1;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 5
    iget-object v1, p0, Lbh/a$c;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lbh/a$d;

    invoke-direct {v1, p1, v0}, Lbh/a$d;-><init>(Lio/grpc/n0$h;Lbh/a$a;)V

    .line 7
    iget-object p1, p0, Lbh/a$c;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lbh/a$a;->v(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method protected m()Lio/grpc/n0$d;
    .locals 1

    iget-object v0, p0, Lbh/a$c;->a:Lio/grpc/n0$d;

    return-object v0
.end method

.method n(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lbh/a$c;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lbh/a$c;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbh/a$a;

    .line 3
    invoke-virtual {v1, p1}, Lbh/a$a;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lbh/a$c;->m()Lio/grpc/n0$d;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
