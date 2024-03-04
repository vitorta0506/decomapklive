.class public final Lio/grpc/stub/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/e$e;,
        Lio/grpc/stub/e$d;,
        Lio/grpc/stub/e$b;,
        Lio/grpc/stub/e$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final b:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Lio/grpc/stub/e$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/stub/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/e;->a:Ljava/util/logging/Logger;

    const-string v0, "internal-stub-type"

    .line 2
    invoke-static {v0}, Lio/grpc/c$a;->b(Ljava/lang/String;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/e;->b:Lio/grpc/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/grpc/g;Lio/grpc/stub/h;)Lio/grpc/stub/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;",
            "Lio/grpc/stub/h<",
            "TRespT;>;)",
            "Lio/grpc/stub/h<",
            "TReqT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lio/grpc/stub/e;->b(Lio/grpc/g;Lio/grpc/stub/h;Z)Lio/grpc/stub/h;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lio/grpc/g;Lio/grpc/stub/h;Z)Lio/grpc/stub/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;",
            "Lio/grpc/stub/h<",
            "TRespT;>;Z)",
            "Lio/grpc/stub/h<",
            "TReqT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/stub/e$b;

    invoke-direct {v0, p0, p2}, Lio/grpc/stub/e$b;-><init>(Lio/grpc/g;Z)V

    .line 2
    new-instance p2, Lio/grpc/stub/e$d;

    invoke-direct {p2, p1, v0}, Lio/grpc/stub/e$d;-><init>(Lio/grpc/stub/h;Lio/grpc/stub/e$b;)V

    invoke-static {p0, p2}, Lio/grpc/stub/e;->c(Lio/grpc/g;Lio/grpc/stub/e$c;)V

    return-object v0
.end method

.method private static c(Lio/grpc/g;Lio/grpc/stub/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;",
            "Lio/grpc/stub/e$c<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    .line 2
    invoke-virtual {p1}, Lio/grpc/stub/e$c;->e()V

    return-void
.end method
