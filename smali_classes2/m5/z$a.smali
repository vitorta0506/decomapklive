.class Lm5/z$a;
.super Lio/grpc/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/z;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/y$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/c;

.field final synthetic c:Lm5/z;


# direct methods
.method constructor <init>(Lm5/z;Lio/grpc/g;Lio/grpc/c;)V
    .locals 0

    iput-object p1, p0, Lm5/z$a;->c:Lm5/z;

    iput-object p3, p0, Lm5/z$a;->b:Lio/grpc/c;

    invoke-direct {p0, p2}, Lio/grpc/y$a;-><init>(Lio/grpc/g;)V

    return-void
.end method


# virtual methods
.method public e(Lio/grpc/g$a;Lio/grpc/s0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/s0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm5/z$a;->c:Lm5/z;

    invoke-static {v0}, Lm5/z;->b(Lm5/z;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/s0$i;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lm5/z$a;->b:Lio/grpc/c;

    .line 4
    invoke-static {v0}, Lm5/d;->a(Lio/grpc/c;)Ljava/util/Map;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/s0$i;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lio/grpc/y;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    return-void
.end method
