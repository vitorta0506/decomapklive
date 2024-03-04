.class final Leh/k1$b$b;
.super Lio/grpc/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/k1$b;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/y<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Leh/k1$c;

.field final synthetic b:Leh/k1$b;


# direct methods
.method constructor <init>(Leh/k1$b;Leh/k1$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/k1$b$b;->b:Leh/k1$b;

    iput-object p2, p0, Leh/k1$b$b;->a:Leh/k1$c;

    invoke-direct {p0}, Lio/grpc/y;-><init>()V

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
    new-instance v0, Leh/k1$b$b$a;

    invoke-direct {v0, p0, p1}, Leh/k1$b$b$a;-><init>(Leh/k1$b$b;Lio/grpc/g$a;)V

    .line 2
    invoke-virtual {p0}, Leh/k1$b$b;->f()Lio/grpc/g;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lio/grpc/g;->e(Lio/grpc/g$a;Lio/grpc/s0;)V

    return-void
.end method

.method protected f()Lio/grpc/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Leh/k1$b$b;->a:Leh/k1$c;

    return-object v0
.end method
