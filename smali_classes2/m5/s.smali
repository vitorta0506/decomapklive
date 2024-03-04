.class Lm5/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm5/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm5/p;->k:Lio/grpc/c$a;

    invoke-virtual {p2, v0}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr5/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lm5/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lr5/a;->g(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p3, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method
