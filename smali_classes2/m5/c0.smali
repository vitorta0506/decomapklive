.class Lm5/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
    .locals 0
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
    invoke-virtual {p3, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lm5/d;->b(Lio/grpc/c;)Lm5/p0;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p3, Lm5/c0$a;

    invoke-direct {p3, p0, p1, p2}, Lm5/c0$a;-><init>(Lm5/c0;Lio/grpc/g;Lm5/p0;)V

    return-object p3
.end method
