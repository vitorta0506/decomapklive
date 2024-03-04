.class Lm5/c0$a;
.super Lio/grpc/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/c0;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/y$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lm5/p0;

.field final synthetic c:Lm5/c0;


# direct methods
.method constructor <init>(Lm5/c0;Lio/grpc/g;Lm5/p0;)V
    .locals 0

    iput-object p1, p0, Lm5/c0$a;->c:Lm5/c0;

    iput-object p3, p0, Lm5/c0$a;->b:Lm5/p0;

    invoke-direct {p0, p2}, Lio/grpc/y$a;-><init>(Lio/grpc/g;)V

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
    new-instance v0, Lm5/c0$a$a;

    invoke-direct {v0, p0, p1}, Lm5/c0$a$a;-><init>(Lm5/c0$a;Lio/grpc/g$a;)V

    .line 2
    invoke-super {p0, v0, p2}, Lio/grpc/y;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    return-void
.end method
