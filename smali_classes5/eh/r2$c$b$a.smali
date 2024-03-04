.class Leh/r2$c$b$a;
.super Lio/grpc/y$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$c$b;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
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
.field final synthetic b:Leh/r2$c$b;


# direct methods
.method constructor <init>(Leh/r2$c$b;Lio/grpc/g;)V
    .locals 0

    iput-object p1, p0, Leh/r2$c$b$a;->b:Leh/r2$c$b;

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
    new-instance v0, Leh/r2$c$b$a$a;

    invoke-direct {v0, p0, p1}, Leh/r2$c$b$a$a;-><init>(Leh/r2$c$b$a;Lio/grpc/g$a;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/y$a;->f()Lio/grpc/g;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    return-void
.end method
