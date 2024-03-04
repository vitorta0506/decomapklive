.class final Lkg/e1;
.super Lkg/g;
.source "SourceFile"


# direct methods
.method constructor <init>(Lkg/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lkg/g;-><init>(Lkg/a;)V

    return-void
.end method

.method private static S2(Lkg/j;I)I
    .locals 0

    invoke-virtual {p0}, Lkg/j;->z()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected M2(Lkg/a;I)I
    .locals 1

    invoke-virtual {p1}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {p1, p2}, Lkg/e1;->S2(Lkg/j;I)I

    move-result p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G([BI)I

    move-result p1

    return p1
.end method

.method protected N2(Lkg/a;I)J
    .locals 1

    invoke-virtual {p1}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {p1, p2}, Lkg/e1;->S2(Lkg/j;I)I

    move-result p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->J([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected O2(Lkg/a;I)S
    .locals 1

    invoke-virtual {p1}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {p1, p2}, Lkg/e1;->S2(Lkg/j;I)I

    move-result p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->N([BI)S

    move-result p1

    return p1
.end method

.method protected P2(Lkg/a;II)V
    .locals 1

    invoke-virtual {p1}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {p1, p2}, Lkg/e1;->S2(Lkg/j;I)I

    move-result p1

    invoke-static {v0, p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H0([BII)V

    return-void
.end method

.method protected Q2(Lkg/a;IJ)V
    .locals 1

    invoke-virtual {p1}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {p1, p2}, Lkg/e1;->S2(Lkg/j;I)I

    move-result p1

    invoke-static {v0, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->J0([BIJ)V

    return-void
.end method

.method protected R2(Lkg/a;IS)V
    .locals 1

    invoke-virtual {p1}, Lkg/j;->y()[B

    move-result-object v0

    invoke-static {p1, p2}, Lkg/e1;->S2(Lkg/j;I)I

    move-result p1

    invoke-static {v0, p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M0([BIS)V

    return-void
.end method
