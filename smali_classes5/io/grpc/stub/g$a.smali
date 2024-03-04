.class final Lio/grpc/stub/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/g$a$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/s0;


# direct methods
.method constructor <init>(Lio/grpc/s0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extraHeaders"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/s0;

    iput-object p1, p0, Lio/grpc/stub/g$a;->a:Lio/grpc/s0;

    return-void
.end method

.method static synthetic b(Lio/grpc/stub/g$a;)Lio/grpc/s0;
    .locals 0

    iget-object p0, p0, Lio/grpc/stub/g$a;->a:Lio/grpc/s0;

    return-object p0
.end method


# virtual methods
.method public a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
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
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    new-instance v0, Lio/grpc/stub/g$a$a;

    invoke-virtual {p3, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/grpc/stub/g$a$a;-><init>(Lio/grpc/stub/g$a;Lio/grpc/g;)V

    return-object v0
.end method
