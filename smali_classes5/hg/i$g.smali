.class final Lhg/i$g;
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
    name = "g"
.end annotation


# instance fields
.field final a:Lio/grpc/n0$e;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    iput-object p1, p0, Lhg/i$g;->a:Lio/grpc/n0$e;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/s0;)Lio/grpc/n0$e;
    .locals 0

    iget-object p1, p0, Lhg/i$g;->a:Lio/grpc/n0$e;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lhg/i$g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lhg/i$g;->a:Lio/grpc/n0$e;

    check-cast p1, Lhg/i$g;

    iget-object p1, p1, Lhg/i$g;->a:Lio/grpc/n0$e;

    invoke-static {v0, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lhg/i$g;->a:Lio/grpc/n0$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhg/i$g;->a:Lio/grpc/n0$e;

    invoke-virtual {v0}, Lio/grpc/n0$e;->a()Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
