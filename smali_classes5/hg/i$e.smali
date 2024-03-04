.class final Lhg/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhg/i$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Lio/grpc/n0$h;

.field final b:Lio/grpc/n0$e;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/n0$h;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "subchannel"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    iput-object v0, p0, Lhg/i$e;->a:Lio/grpc/n0$h;

    .line 7
    invoke-static {p1}, Lio/grpc/n0$e;->h(Lio/grpc/n0$h;)Lio/grpc/n0$e;

    move-result-object p1

    iput-object p1, p0, Lhg/i$e;->b:Lio/grpc/n0$e;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lhg/i$e;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$h;Lhg/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "subchannel"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    iput-object v0, p0, Lhg/i$e;->a:Lio/grpc/n0$h;

    const-string v0, "loadRecorder"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/k$a;

    invoke-static {p1, p2}, Lio/grpc/n0$e;->i(Lio/grpc/n0$h;Lio/grpc/k$a;)Lio/grpc/n0$e;

    move-result-object p1

    iput-object p1, p0, Lhg/i$e;->b:Lio/grpc/n0$e;

    const-string p1, "token"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lhg/i$e;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$h;Lhg/l;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "subchannel"

    .line 10
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    iput-object v0, p0, Lhg/i$e;->a:Lio/grpc/n0$h;

    const-string v0, "tracerFactory"

    .line 11
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/k$a;

    invoke-static {p1, p2}, Lio/grpc/n0$e;->i(Lio/grpc/n0$h;Lio/grpc/k$a;)Lio/grpc/n0$e;

    move-result-object p1

    iput-object p1, p0, Lhg/i$e;->b:Lio/grpc/n0$e;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lhg/i$e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/s0;)Lio/grpc/n0$e;
    .locals 2

    .line 1
    sget-object v0, Lhg/e;->a:Lio/grpc/s0$i;

    invoke-virtual {p1, v0}, Lio/grpc/s0;->i(Lio/grpc/s0$i;)V

    .line 2
    iget-object v1, p0, Lhg/i$e;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lhg/i$e;->b:Lio/grpc/n0$e;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lhg/i$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lhg/i$e;

    .line 3
    iget-object v0, p0, Lhg/i$e;->b:Lio/grpc/n0$e;

    iget-object v2, p1, Lhg/i$e;->b:Lio/grpc/n0$e;

    invoke-static {v0, v2}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhg/i$e;->c:Ljava/lang/String;

    iget-object p1, p1, Lhg/i$e;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lhg/i$e;->b:Lio/grpc/n0$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lhg/i$e;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhg/i$e;->a:Lio/grpc/n0$h;

    invoke-virtual {v1}, Lio/grpc/n0$h;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhg/i$e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
