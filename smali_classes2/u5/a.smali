.class public Lu5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/g0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm5/q;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lu6/b;)Lcom/google/api/gax/rpc/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "MetadataT:",
            "Ljava/lang/Object;",
            ">(",
            "Lm5/q<",
            "TRequestT;",
            "Lcom/google/longrunning/Operation;",
            ">;",
            "Lcom/google/api/gax/rpc/s<",
            "TRequestT;TResponseT;TMetadataT;>;",
            "Lcom/google/api/gax/rpc/j;",
            "Lu6/b;",
            ")",
            "Lcom/google/api/gax/rpc/t<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lm5/r;->c(Lm5/q;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lu6/b;)Lcom/google/api/gax/rpc/t;

    move-result-object p1

    return-object p1
.end method

.method public b(Lm5/q;Lcom/google/api/gax/rpc/f0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lm5/q<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/f0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/j;",
            ")",
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lm5/r;->b(Lm5/q;Lcom/google/api/gax/rpc/f0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lm5/q<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/j;",
            ")",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lm5/r;->e(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lm5/q;Lcom/google/api/gax/rpc/v;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "Paged",
            "ListResponseT:Ljava/lang/Object;",
            ">(",
            "Lm5/q<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/v<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;",
            "Lcom/google/api/gax/rpc/j;",
            ")",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lm5/r;->d(Lm5/q;Lcom/google/api/gax/rpc/v;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p1

    return-object p1
.end method
