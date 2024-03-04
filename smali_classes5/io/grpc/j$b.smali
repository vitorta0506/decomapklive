.class Lio/grpc/j$b;
.super Lio/grpc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/d;

.field private final b:Lio/grpc/h;


# direct methods
.method private constructor <init>(Lio/grpc/d;Lio/grpc/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/d;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/j$b;->a:Lio/grpc/d;

    const-string p1, "interceptor"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/h;

    iput-object p1, p0, Lio/grpc/j$b;->b:Lio/grpc/h;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/d;Lio/grpc/h;Lio/grpc/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/j$b;-><init>(Lio/grpc/d;Lio/grpc/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/j$b;->a:Lio/grpc/d;

    invoke-virtual {v0}, Lio/grpc/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
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
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/j$b;->b:Lio/grpc/h;

    iget-object v1, p0, Lio/grpc/j$b;->a:Lio/grpc/d;

    invoke-interface {v0, p1, p2, v1}, Lio/grpc/h;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;

    move-result-object p1

    return-object p1
.end method
