.class Lm5/j$d;
.super Lio/grpc/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/y$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final b:Lm5/j$c;


# direct methods
.method public constructor <init>(Lio/grpc/g;Lm5/j$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;",
            "Lm5/j$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/y$a;-><init>(Lio/grpc/g;)V

    .line 2
    iput-object p2, p0, Lm5/j$d;->b:Lm5/j$c;

    return-void
.end method


# virtual methods
.method public e(Lio/grpc/g$a;Lio/grpc/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;",
            "Lio/grpc/s0;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lm5/j$d$a;

    invoke-direct {v0, p0, p1}, Lm5/j$d$a;-><init>(Lm5/j$d;Lio/grpc/g$a;)V

    invoke-super {p0, v0, p2}, Lio/grpc/y;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lm5/j$d;->b:Lm5/j$c;

    invoke-static {p1}, Lm5/j$c;->d(Lm5/j$c;)V

    :goto_0
    return-void
.end method
