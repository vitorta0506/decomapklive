.class Lm5/u;
.super Lcom/google/api/gax/rpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/h<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/MethodDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/h;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/MethodDescriptor;

    iput-object p1, p0, Lm5/u;->a:Lio/grpc/MethodDescriptor;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Lcom/google/api/gax/rpc/m<",
            "TRequestT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lm5/u;->a:Lio/grpc/MethodDescriptor;

    invoke-static {v0, p3}, Lm5/t;->a(Lio/grpc/MethodDescriptor;Lcom/google/api/gax/rpc/a;)Lio/grpc/g;

    move-result-object p3

    .line 3
    new-instance v0, Lm5/u$a;

    invoke-direct {v0, p0, p3}, Lm5/u$a;-><init>(Lm5/u;Lio/grpc/g;)V

    .line 4
    new-instance v1, Lm5/w;

    new-instance v2, Lm5/u$b;

    invoke-direct {v2, p0, p2, v0}, Lm5/u$b;-><init>(Lm5/u;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/l;)V

    invoke-direct {v1, p3, p1, v2}, Lm5/w;-><init>(Lio/grpc/g;Lcom/google/api/gax/rpc/b0;Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v1}, Lm5/w;->f()V

    return-object v0
.end method
