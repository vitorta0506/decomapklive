.class Lig/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/q2;


# instance fields
.field private final a:Lkg/j;


# direct methods
.method constructor <init>(Lkg/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lig/d0;->a:Lkg/j;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lig/d0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->t2()I

    move-result v0

    return v0
.end method

.method public b(B)V
    .locals 1

    iget-object v0, p0, Lig/d0;->a:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->u2(I)Lkg/j;

    return-void
.end method

.method c()Lkg/j;
    .locals 1

    iget-object v0, p0, Lig/d0;->a:Lkg/j;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lig/d0;->a:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lig/d0;->a:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Lig/d0;->a:Lkg/j;

    invoke-virtual {v0, p1, p2, p3}, Lkg/j;->B2([BII)Lkg/j;

    return-void
.end method
