.class final Leh/p1$b;
.super Leh/p1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Leh/p1$d;-><init>(Leh/p1$a;)V

    const-string v0, "status"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Status;

    iput-object p1, p0, Leh/p1$b;->a:Lio/grpc/Status;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 0

    iget-object p1, p0, Leh/p1$b;->a:Lio/grpc/Status;

    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio/grpc/n0$e;->g()Lio/grpc/n0$e;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leh/p1$b;->a:Lio/grpc/Status;

    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method b(Leh/p1$d;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Leh/p1$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leh/p1$b;->a:Lio/grpc/Status;

    check-cast p1, Leh/p1$b;

    iget-object v1, p1, Leh/p1$b;->a:Lio/grpc/Status;

    invoke-static {v0, v1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leh/p1$b;->a:Lio/grpc/Status;

    .line 2
    invoke-virtual {v0}, Lio/grpc/Status;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Leh/p1$b;->a:Lio/grpc/Status;

    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-class v0, Leh/p1$b;

    invoke-static {v0}, Lcom/google/common/base/j;->b(Ljava/lang/Class;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Leh/p1$b;->a:Lio/grpc/Status;

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method