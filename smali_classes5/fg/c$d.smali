.class abstract Lfg/c$d;
.super Lio/grpc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfg/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfg/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lfg/c$d;->j()Lio/grpc/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 1
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
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lfg/c$d;->j()Lio/grpc/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method

.method protected abstract j()Lio/grpc/d;
.end method
