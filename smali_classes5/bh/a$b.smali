.class final Lbh/a$b;
.super Ldh/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final c:Lio/grpc/n0;

.field final d:Lbh/a$c;

.field final e:Lio/grpc/d1;

.field final f:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lbh/a$c;Lio/grpc/n0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ldh/a;-><init>()V

    const-string v0, "helper"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbh/a$c;

    iput-object v0, p0, Lbh/a$b;->d:Lbh/a$c;

    .line 3
    invoke-virtual {p1}, Ldh/b;->h()Lio/grpc/d1;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d1;

    iput-object v0, p0, Lbh/a$b;->e:Lio/grpc/d1;

    .line 4
    invoke-virtual {p1}, Ldh/b;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    const-string v0, "timerService"

    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lbh/a$b;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "delegate"

    .line 5
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0;

    iput-object p1, p0, Lbh/a$b;->c:Lio/grpc/n0;

    return-void
.end method


# virtual methods
.method public d(Lio/grpc/n0$g;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$g;->b()Lio/grpc/a;

    move-result-object v0

    sget-object v1, Lio/grpc/n0;->b:Lio/grpc/a$c;

    .line 2
    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3
    invoke-static {v0}, Lio/grpc/internal/e2;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lbh/a$b;->d:Lbh/a$c;

    invoke-virtual {v1, v0}, Lbh/a$c;->n(Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Ldh/a;->d(Lio/grpc/n0$g;)V

    return-void
.end method

.method protected f()Lio/grpc/n0;
    .locals 1

    iget-object v0, p0, Lbh/a$b;->c:Lio/grpc/n0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {p0}, Lbh/a$b;->f()Lio/grpc/n0;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
