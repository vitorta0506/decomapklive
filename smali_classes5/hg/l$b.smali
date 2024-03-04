.class Lhg/l$b;
.super Lio/grpc/internal/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg/l;->a(Lio/grpc/k$b;Lio/grpc/s0;)Lio/grpc/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/k;

.field final synthetic b:Lhg/l;


# direct methods
.method constructor <init>(Lhg/l;Lio/grpc/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lhg/l$b;->b:Lhg/l;

    iput-object p2, p0, Lhg/l$b;->a:Lio/grpc/k;

    invoke-direct {p0}, Lio/grpc/internal/k0;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lio/grpc/a;Lio/grpc/s0;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/internal/r0;->b:Lio/grpc/a$c;

    .line 2
    invoke-virtual {p1, v0}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/a;

    const-string v1, "eagAttrs"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/a;

    .line 3
    sget-object v1, Lhg/e;->b:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    sget-object v1, Lhg/e;->a:Lio/grpc/s0$i;

    invoke-virtual {p2, v1}, Lio/grpc/s0;->i(Lio/grpc/s0$i;)V

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p2, v1, v0}, Lio/grpc/s0;->t(Lio/grpc/s0$i;Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lhg/l$b;->n()Lio/grpc/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/k;->m(Lio/grpc/a;Lio/grpc/s0;)V

    return-void
.end method

.method protected n()Lio/grpc/k;
    .locals 1

    iget-object v0, p0, Lhg/l$b;->a:Lio/grpc/k;

    return-object v0
.end method
