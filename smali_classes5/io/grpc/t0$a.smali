.class Lio/grpc/t0$a;
.super Lio/grpc/t0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/t0;->e(Lio/grpc/t0$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/t0$f;

.field final synthetic b:Lio/grpc/t0;


# direct methods
.method constructor <init>(Lio/grpc/t0;Lio/grpc/t0$f;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/t0$a;->b:Lio/grpc/t0;

    iput-object p2, p0, Lio/grpc/t0$a;->a:Lio/grpc/t0$f;

    invoke-direct {p0}, Lio/grpc/t0$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/t0$a;->a:Lio/grpc/t0$f;

    invoke-interface {v0, p1}, Lio/grpc/t0$f;->a(Lio/grpc/Status;)V

    return-void
.end method

.method public c(Lio/grpc/t0$g;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/t0$a;->a:Lio/grpc/t0$f;

    invoke-virtual {p1}, Lio/grpc/t0$g;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/t0$g;->b()Lio/grpc/a;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/grpc/t0$f;->b(Ljava/util/List;Lio/grpc/a;)V

    return-void
.end method
