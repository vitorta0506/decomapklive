.class public Lm5/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lm5/q;Ljava/util/Set;)Lcom/google/api/gax/rpc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lm5/q<",
            "TRequestT;TResponseT;>;",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)",
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm5/u;

    .line 2
    invoke-virtual {p0}, Lm5/q;->a()Lio/grpc/MethodDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Lm5/u;-><init>(Lio/grpc/MethodDescriptor;)V

    .line 3
    new-instance p0, Lm5/x;

    invoke-direct {p0, v0, p1}, Lm5/x;-><init>(Lcom/google/api/gax/rpc/h;Ljava/util/Set;)V

    return-object p0
.end method

.method public static b(Lm5/q;Ljava/util/Set;)Lcom/google/api/gax/rpc/k0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lm5/q<",
            "TRequestT;TResponseT;>;",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lm5/v;

    .line 2
    invoke-virtual {p0}, Lm5/q;->a()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lm5/q;->d()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lm5/v;-><init>(Lio/grpc/MethodDescriptor;Z)V

    .line 3
    invoke-virtual {p0}, Lm5/q;->b()Lcom/google/api/gax/rpc/z;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lm5/i0;

    .line 5
    invoke-virtual {p0}, Lm5/q;->b()Lcom/google/api/gax/rpc/z;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lm5/i0;-><init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/z;)V

    move-object v0, v1

    .line 6
    :cond_0
    new-instance p0, Lm5/y;

    invoke-direct {p0, v0, p1}, Lm5/y;-><init>(Lcom/google/api/gax/rpc/k0;Ljava/util/Set;)V

    return-object p0
.end method
