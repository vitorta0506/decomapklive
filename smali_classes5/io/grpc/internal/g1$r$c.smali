.class final Lio/grpc/internal/g1$r$c;
.super Lio/grpc/internal/y0$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/g1$r;->a(Ljava/util/List;Ljava/lang/String;)Lio/grpc/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/q1;

.field final synthetic b:Lio/grpc/internal/g1$r;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1$r;Lio/grpc/internal/q1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/internal/g1$r$c;->b:Lio/grpc/internal/g1$r;

    iput-object p2, p0, Lio/grpc/internal/g1$r$c;->a:Lio/grpc/internal/q1;

    invoke-direct {p0}, Lio/grpc/internal/y0$j;-><init>()V

    return-void
.end method


# virtual methods
.method c(Lio/grpc/internal/y0;Lio/grpc/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/internal/g1$r$c;->b:Lio/grpc/internal/g1$r;

    iget-object p1, p1, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {p1, p2}, Lio/grpc/internal/g1;->k0(Lio/grpc/internal/g1;Lio/grpc/q;)V

    .line 2
    iget-object p1, p0, Lio/grpc/internal/g1$r$c;->a:Lio/grpc/internal/q1;

    invoke-virtual {p1, p2}, Lio/grpc/internal/q1;->r(Lio/grpc/q;)V

    return-void
.end method

.method d(Lio/grpc/internal/y0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$r$c;->b:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->D0(Lio/grpc/internal/g1;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/g1$r$c;->a:Lio/grpc/internal/q1;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$r$c;->b:Lio/grpc/internal/g1$r;

    iget-object v0, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/c0;->k(Lio/grpc/f0;)V

    .line 3
    iget-object p1, p0, Lio/grpc/internal/g1$r$c;->a:Lio/grpc/internal/q1;

    invoke-virtual {p1}, Lio/grpc/internal/q1;->s()V

    .line 4
    iget-object p1, p0, Lio/grpc/internal/g1$r$c;->b:Lio/grpc/internal/g1$r;

    iget-object p1, p1, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {p1}, Lio/grpc/internal/g1;->j0(Lio/grpc/internal/g1;)V

    return-void
.end method
