.class public Lm5/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^.*?([^./]+)/([^./]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lm5/r;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;
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
            "Lcom/google/api/gax/rpc/j0<",
            "**>;",
            "Lcom/google/api/gax/rpc/j;",
            ")",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0;->c()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lm5/e0;->b(Lm5/q;Ljava/util/Set;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/api/gax/rpc/i;->e(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lm5/q;Lcom/google/api/gax/rpc/f0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/h;
    .locals 2
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

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lm5/e0;->a(Lm5/q;Ljava/util/Set;)Lcom/google/api/gax/rpc/h;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/google/api/gax/tracing/b;

    .line 4
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->o()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lm5/q;->a()Lio/grpc/MethodDescriptor;

    move-result-object p0

    invoke-static {p0}, Lm5/r;->f(Lio/grpc/MethodDescriptor;)Lr5/d;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/google/api/gax/tracing/b;-><init>(Lcom/google/api/gax/rpc/h;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->e()Lcom/google/api/gax/rpc/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/api/gax/rpc/h;->e(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/h;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lm5/q;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lu6/b;)Lcom/google/api/gax/rpc/t;
    .locals 4
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

    .line 1
    invoke-virtual {p0}, Lm5/q;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-static {v0}, Lm5/r;->f(Lio/grpc/MethodDescriptor;)Lr5/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lr5/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lr5/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Operation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lr5/d;->c(Ljava/lang/String;Ljava/lang/String;)Lr5/d;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/s;->a()Lcom/google/api/gax/rpc/j0;

    move-result-object v2

    .line 4
    invoke-static {p0, v2, p2}, Lm5/r;->a(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    .line 5
    new-instance v2, Lm5/d0;

    invoke-direct {v2, p0}, Lm5/d0;-><init>(Lcom/google/api/gax/rpc/k0;)V

    .line 6
    new-instance p0, Lr5/e;

    .line 7
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->o()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lr5/e;-><init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V

    .line 8
    new-instance v0, Lm5/b0;

    invoke-direct {v0, p3}, Lm5/b0;-><init>(Lu6/b;)V

    .line 9
    invoke-static {p0, p1, p2, v0}, Lcom/google/api/gax/rpc/i;->b(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lcom/google/api/gax/rpc/r;)Lcom/google/api/gax/rpc/t;

    move-result-object p0

    .line 10
    new-instance p1, Lcom/google/api/gax/tracing/c;

    .line 11
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->o()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object p3

    invoke-direct {p1, p0, p3, v1}, Lcom/google/api/gax/tracing/c;-><init>(Lcom/google/api/gax/rpc/t;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V

    .line 12
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->e()Lcom/google/api/gax/rpc/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/api/gax/rpc/t;->a(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/t;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lm5/q;Lcom/google/api/gax/rpc/v;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;
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

    .line 1
    invoke-static {p0, p1, p2}, Lm5/r;->a(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/google/api/gax/rpc/i;->d(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/v;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    .line 3
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->e()Lcom/google/api/gax/rpc/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/gax/rpc/k0;->a(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;
    .locals 2
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

    .line 1
    invoke-static {p0, p1, p2}, Lm5/r;->a(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/google/api/gax/tracing/e;

    .line 3
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->o()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lm5/q;->a()Lio/grpc/MethodDescriptor;

    move-result-object p0

    invoke-static {p0}, Lm5/r;->f(Lio/grpc/MethodDescriptor;)Lr5/d;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/google/api/gax/tracing/e;-><init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->e()Lcom/google/api/gax/rpc/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/api/gax/rpc/k0;->a(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/k0;

    move-result-object p0

    return-object p0
.end method

.method static f(Lio/grpc/MethodDescriptor;)Lr5/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lr5/d;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm5/r;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Lio/grpc/MethodDescriptor;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Invalid fullMethodName"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lr5/d;->c(Ljava/lang/String;Ljava/lang/String;)Lr5/d;

    move-result-object p0

    return-object p0
.end method
