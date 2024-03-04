.class final Lkg/d$a;
.super Lkg/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final k:Lkg/j;


# direct methods
.method constructor <init>(Lkg/j;Lkg/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lkg/v0;-><init>(Lkg/a;)V

    .line 2
    iput-object p1, p0, Lkg/d$a;->k:Lkg/j;

    return-void
.end method


# virtual methods
.method A3()Z
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->f1()Z

    move-result v0

    return v0
.end method

.method B3()I
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method C3()Z
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method D3(I)Z
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    move-result p1

    return p1
.end method

.method E3()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method F3(I)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->U1(I)Lkg/j;

    return-object p0
.end method

.method G3()Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->q2()Lkg/j;

    return-object p0
.end method

.method H3(Ljava/lang/Object;)Lkg/j;
    .locals 1

    iget-object v0, p0, Lkg/d$a;->k:Lkg/j;

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public V1()Lkg/j;
    .locals 3

    invoke-virtual {p0}, Lkg/v0;->I3()Lkg/a;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v1

    invoke-virtual {p0}, Lkg/a;->K2()I

    move-result v2

    invoke-static {v0, p0, v1, v2}, Lkg/g0;->J3(Lkg/a;Lkg/j;II)Lkg/g0;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lkg/j;
    .locals 2

    invoke-virtual {p0}, Lkg/a;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/q;->F()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkg/d$a;->v3(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public f0()Lkg/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkg/a;->p3()V

    .line 2
    new-instance v0, Lkg/d$a;

    iget-object v1, p0, Lkg/d$a;->k:Lkg/j;

    invoke-direct {v0, v1, p0}, Lkg/d$a;-><init>(Lkg/j;Lkg/a;)V

    return-object v0
.end method

.method public n2(II)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lkg/a;->f3(II)V

    .line 2
    new-instance v0, Lkg/d$b;

    iget-object v1, p0, Lkg/d$a;->k:Lkg/j;

    invoke-virtual {p0}, Lkg/v0;->I3()Lkg/a;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lkg/d$b;-><init>(Lkg/j;Lkg/a;II)V

    return-object v0
.end method

.method public v3(II)Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/v0;->I3()Lkg/a;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lkg/i0;->K3(Lkg/a;Lkg/j;II)Lkg/i0;

    move-result-object p1

    return-object p1
.end method
