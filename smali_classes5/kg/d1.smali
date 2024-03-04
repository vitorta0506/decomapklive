.class final Lkg/d1;
.super Lkg/g;
.source "SourceFile"


# direct methods
.method constructor <init>(Lkg/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lkg/g;-><init>(Lkg/a;)V

    return-void
.end method

.method private static S2(Lkg/a;I)J
    .locals 2

    invoke-virtual {p0}, Lkg/j;->p1()J

    move-result-wide v0

    int-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method protected M2(Lkg/a;I)I
    .locals 0

    invoke-static {p1, p2}, Lkg/d1;->S2(Lkg/a;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E(J)I

    move-result p1

    return p1
.end method

.method protected N2(Lkg/a;I)J
    .locals 0

    invoke-static {p1, p2}, Lkg/d1;->S2(Lkg/a;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected O2(Lkg/a;I)S
    .locals 0

    invoke-static {p1, p2}, Lkg/d1;->S2(Lkg/a;I)J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M(J)S

    move-result p1

    return p1
.end method

.method protected P2(Lkg/a;II)V
    .locals 0

    invoke-static {p1, p2}, Lkg/d1;->S2(Lkg/a;I)J

    move-result-wide p1

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G0(JI)V

    return-void
.end method

.method protected Q2(Lkg/a;IJ)V
    .locals 0

    invoke-static {p1, p2}, Lkg/d1;->S2(Lkg/a;I)J

    move-result-wide p1

    invoke-static {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I0(JJ)V

    return-void
.end method

.method protected R2(Lkg/a;IS)V
    .locals 0

    invoke-static {p1, p2}, Lkg/d1;->S2(Lkg/a;I)J

    move-result-wide p1

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->L0(JS)V

    return-void
.end method
