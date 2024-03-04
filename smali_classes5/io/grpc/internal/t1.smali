.class public final Lio/grpc/internal/t1;
.super Lio/grpc/n0$f;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/c;

.field private final b:Lio/grpc/s0;

.field private final c:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/n0$f;-><init>()V

    const-string v0, "method"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/MethodDescriptor;

    iput-object p1, p0, Lio/grpc/internal/t1;->c:Lio/grpc/MethodDescriptor;

    const-string p1, "headers"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/s0;

    iput-object p1, p0, Lio/grpc/internal/t1;->b:Lio/grpc/s0;

    const-string p1, "callOptions"

    .line 4
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/c;

    iput-object p1, p0, Lio/grpc/internal/t1;->a:Lio/grpc/c;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/c;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/t1;->a:Lio/grpc/c;

    return-object v0
.end method

.method public b()Lio/grpc/s0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/t1;->b:Lio/grpc/s0;

    return-object v0
.end method

.method public c()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/t1;->c:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lio/grpc/internal/t1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/internal/t1;

    .line 3
    iget-object v2, p0, Lio/grpc/internal/t1;->a:Lio/grpc/c;

    iget-object v3, p1, Lio/grpc/internal/t1;->a:Lio/grpc/c;

    invoke-static {v2, v3}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/internal/t1;->b:Lio/grpc/s0;

    iget-object v3, p1, Lio/grpc/internal/t1;->b:Lio/grpc/s0;

    .line 4
    invoke-static {v2, v3}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/grpc/internal/t1;->c:Lio/grpc/MethodDescriptor;

    iget-object p1, p1, Lio/grpc/internal/t1;->c:Lio/grpc/MethodDescriptor;

    .line 5
    invoke-static {v2, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/t1;->a:Lio/grpc/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/t1;->b:Lio/grpc/s0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/t1;->c:Lio/grpc/MethodDescriptor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/internal/t1;->c:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/internal/t1;->b:Lio/grpc/s0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/internal/t1;->a:Lio/grpc/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
