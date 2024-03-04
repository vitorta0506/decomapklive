.class Lm5/c0$a$a;
.super Lio/grpc/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/c0$a;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/z$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lm5/c0$a;


# direct methods
.method constructor <init>(Lm5/c0$a;Lio/grpc/g$a;)V
    .locals 0

    iput-object p1, p0, Lm5/c0$a$a;->b:Lm5/c0$a;

    invoke-direct {p0, p2}, Lio/grpc/z$a;-><init>(Lio/grpc/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;Lio/grpc/s0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/c0$a$a;->b:Lm5/c0$a;

    iget-object v0, v0, Lm5/c0$a;->b:Lm5/p0;

    invoke-interface {v0, p2}, Lm5/p0;->b(Lio/grpc/s0;)V

    .line 2
    invoke-super {p0, p1, p2}, Lio/grpc/z$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    return-void
.end method

.method public b(Lio/grpc/s0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lio/grpc/z$a;->b(Lio/grpc/s0;)V

    .line 2
    iget-object v0, p0, Lm5/c0$a$a;->b:Lm5/c0$a;

    iget-object v0, v0, Lm5/c0$a;->b:Lm5/p0;

    invoke-interface {v0, p1}, Lm5/p0;->a(Lio/grpc/s0;)V

    return-void
.end method
