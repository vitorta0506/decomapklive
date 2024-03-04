.class public abstract Lkg/c;
.super Lkg/a;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lkg/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method A3()Z
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->f1()Z

    move-result v0

    return v0
.end method

.method B3()I
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    return v0
.end method

.method C3()Z
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result v0

    return v0
.end method

.method D3(I)Z
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release(I)Z

    move-result p1

    return p1
.end method

.method E3()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->T1()Lkg/j;

    return-object p0
.end method

.method F3(I)Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkg/j;->U1(I)Lkg/j;

    return-object p0
.end method

.method G3()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->q2()Lkg/j;

    return-object p0
.end method

.method H3(Ljava/lang/Object;)Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    return-object p0
.end method

.method public final T1()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/c;->E3()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public final U1(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/c;->F3(I)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public e1(II)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkg/c;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method final f1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/c;->A3()Z

    move-result v0

    return v0
.end method

.method public g1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->g1()Z

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->i1()Z

    move-result v0

    return v0
.end method

.method public final q2()Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/c;->G3()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public r1(II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->s2()Lkg/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lkg/j;->r1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final r2(Ljava/lang/Object;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/c;->H3(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public final refCnt()I
    .locals 1

    invoke-virtual {p0}, Lkg/c;->B3()I

    move-result v0

    return v0
.end method

.method public final release()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkg/c;->C3()Z

    move-result v0

    return v0
.end method

.method public final release(I)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lkg/c;->D3(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/c;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/c;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method
