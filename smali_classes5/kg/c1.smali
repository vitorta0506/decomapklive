.class final Lkg/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i0()Z

    move-result v0

    sput-boolean v0, Lkg/c1;->a:Z

    return-void
.end method

.method static A(Lkg/a;JILkg/j;II)V
    .locals 8

    .line 1
    invoke-virtual {p0, p3, p6}, Lkg/a;->f3(II)V

    const-string v0, "src"

    .line 2
    invoke-static {p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p4}, Lkg/j;->F()I

    move-result v0

    invoke-static {p5, p6, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p6, :cond_2

    .line 4
    invoke-virtual {p4}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p4}, Lkg/j;->p1()J

    move-result-wide p3

    int-to-long v0, p5

    add-long v2, p3, v0

    int-to-long v6, p6

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p4}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p4}, Lkg/j;->y()[B

    move-result-object v1

    invoke-virtual {p4}, Lkg/j;->z()I

    move-result p0

    add-int v2, p0, p5

    int-to-long v5, p6

    move-wide v3, p1

    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q([BIJJ)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p4, p5, p0, p3, p6}, Lkg/j;->A0(ILkg/j;II)Lkg/j;

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "srcIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static B(Lkg/a;JI[BII)V
    .locals 6

    .line 1
    invoke-virtual {p0, p3, p6}, Lkg/a;->f3(II)V

    const-string p0, "src"

    .line 2
    invoke-static {p4, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length p0, p4

    invoke-static {p5, p6, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p6, :cond_0

    int-to-long v4, p6

    move-object v0, p4

    move v1, p5

    move-wide v2, p1

    .line 4
    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q([BIJJ)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "srcIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static C(JI)V
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G0(JI)V

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 4
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 5
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x3

    add-long/2addr p0, v0

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    :goto_1
    return-void
.end method

.method static D([BII)V
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H0([BII)V

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 4
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 5
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    :goto_1
    return-void
.end method

.method static E(JI)V
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G0(JI)V

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    .line 4
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 5
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x3

    add-long/2addr p0, v0

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    :goto_0
    return-void
.end method

.method static F([BII)V
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->H0([BII)V

    goto :goto_0

    :cond_1
    int-to-byte v0, p2

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 4
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 5
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 p1, p1, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    :goto_0
    return-void
.end method

.method static G(JJ)V
    .locals 4

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I0(JJ)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 4
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p0

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 5
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p0

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 6
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 7
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x5

    add-long/2addr v0, p0

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 8
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x6

    add-long/2addr v0, p0

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 9
    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x7

    add-long/2addr p0, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 10
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    :goto_1
    return-void
.end method

.method static H([BIJ)V
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->J0([BIJ)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x38

    ushr-long v0, p2, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 3
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 4
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 5
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 6
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 7
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 8
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 9
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 p1, p1, 0x7

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 10
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    :goto_1
    return-void
.end method

.method static I(JI)V
    .locals 3

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 1
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    .line 2
    sget-boolean v0, Lkg/c1;->a:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    add-long/2addr p0, v1

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    int-to-short p2, p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 5
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->L0(JS)V

    goto :goto_1

    :cond_1
    add-long/2addr v1, p0

    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 6
    invoke-static {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    int-to-byte p2, p2

    .line 7
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    :goto_1
    return-void
.end method

.method static J([BII)V
    .locals 2

    ushr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 1
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    .line 2
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    int-to-short p2, p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 5
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M0([BIS)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 6
    invoke-static {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 p1, p1, 0x2

    int-to-byte p2, p2

    .line 7
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    :goto_1
    return-void
.end method

.method static K(JI)V
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    int-to-short p2, p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->L0(JS)V

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    :goto_1
    return-void
.end method

.method static L([BII)V
    .locals 1

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    int-to-short p2, p2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M0([BIS)V

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    .line 5
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    :goto_1
    return-void
.end method

.method static M(JI)V
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    int-to-short p2, p2

    .line 3
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    goto :goto_0

    :cond_0
    int-to-short p2, p2

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->L0(JS)V

    goto :goto_1

    :cond_1
    int-to-byte v0, p2

    .line 5
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    :goto_1
    return-void
.end method

.method static N([BII)V
    .locals 1

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    int-to-short p2, p2

    .line 3
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    goto :goto_0

    :cond_0
    int-to-short p2, p2

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M0([BIS)V

    goto :goto_1

    :cond_1
    int-to-byte v0, p2

    .line 5
    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    .line 6
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    :goto_1
    return-void
.end method

.method private static O(Lkg/a;JILjava/nio/ByteBuffer;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p3, p5}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    .line 3
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    :goto_0
    if-ge p0, p3, :cond_0

    .line 4
    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p5

    .line 5
    invoke-static {p1, p2, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p4, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method static P(JI)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    int-to-long v0, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->O0(JJB)V

    return-void
.end method

.method static Q([BII)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    int-to-long v0, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->P0([BIJB)V

    return-void
.end method

.method static a(Lkg/a;JII)Lkg/j;
    .locals 8

    .line 1
    invoke-virtual {p0, p3, p4}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object v0

    invoke-virtual {p0}, Lkg/a;->m1()I

    move-result v1

    invoke-interface {v0, p4, v1}, Lkg/k;->i(II)Lkg/j;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 3
    invoke-virtual {v0}, Lkg/j;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lkg/j;->p1()J

    move-result-wide v4

    int-to-long v6, p4

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0, p4}, Lkg/j;->d2(II)Lkg/j;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p0, p3, p4}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    :cond_1
    :goto_0
    return-object v0
.end method

.method static b(J)B
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    return p0
.end method

.method static c([BI)B
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    return p0
.end method

.method private static d(J[BIILjava/io/OutputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-long v7, v6

    move-wide v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, v7

    .line 2
    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    .line 3
    invoke-virtual {p5, p2, p3, v6}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p6, v6

    add-long/2addr p0, v7

    if-gtz p6, :cond_0

    return-void
.end method

.method static e(Lkg/a;JILjava/io/OutputStream;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3, p5}, Lkg/a;->f3(II)V

    if-eqz p5, :cond_2

    const/16 p3, 0x2000

    .line 2
    invoke-static {p5, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 p3, 0x400

    if-le v4, p3, :cond_1

    .line 3
    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object p3

    invoke-interface {p3}, Lkg/k;->e()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object p0

    invoke-interface {p0, v4}, Lkg/k;->b(I)Lkg/j;

    move-result-object p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lkg/j;->y()[B

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lkg/j;->z()I

    move-result v3

    move-wide v0, p1

    move-object v5, p4

    move v6, p5

    .line 7
    invoke-static/range {v0 .. v6}, Lkg/c1;->d(J[BIILjava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 9
    throw p1

    .line 10
    :cond_1
    :goto_0
    invoke-static {v4}, Lkg/n;->O(I)[B

    move-result-object v2

    const/4 v3, 0x0

    move-wide v0, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lkg/c1;->d(J[BIILjava/io/OutputStream;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method static f(Lkg/a;JILjava/nio/ByteBuffer;)V
    .locals 10

    .line 1
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lkg/a;->f3(II)V

    .line 2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result p0

    if-nez p0, :cond_1

    .line 5
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 6
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    int-to-long v2, p0

    add-long v6, v0, v2

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    int-to-long v8, p0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    .line 7
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0

    .line 9
    :cond_2
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int v3, p0, p3

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    int-to-long v4, p0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    .line 11
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    add-int/2addr p0, p1

    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Lkg/a;->q1()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method static g(Lkg/a;JILkg/j;II)V
    .locals 8

    .line 1
    invoke-virtual {p0, p3, p6}, Lkg/a;->f3(II)V

    const-string v0, "dst"

    .line 2
    invoke-static {p4, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p4}, Lkg/j;->F()I

    move-result v0

    invoke-static {p5, p6, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p4}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p4}, Lkg/j;->p1()J

    move-result-wide p3

    int-to-long v0, p5

    add-long v4, p3, v0

    int-to-long v6, p6

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p4}, Lkg/j;->a1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p4}, Lkg/j;->y()[B

    move-result-object p3

    invoke-virtual {p4}, Lkg/j;->z()I

    move-result p0

    add-int p4, p0, p5

    int-to-long p5, p6

    move-wide p0, p1

    move-object p2, p3

    move p3, p4

    move-wide p4, p5

    invoke-static/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p4, p5, p0, p3, p6}, Lkg/j;->a2(ILkg/j;II)Lkg/j;

    :goto_0
    return-void

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dstIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static h(Lkg/a;JI[BII)V
    .locals 6

    .line 1
    invoke-virtual {p0, p3, p6}, Lkg/a;->f3(II)V

    const-string p0, "dst"

    .line 2
    invoke-static {p4, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    array-length p0, p4

    invoke-static {p5, p6, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->c(III)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p6, :cond_0

    int-to-long v4, p6

    move-wide v0, p1

    move-object v2, p4

    move v3, p5

    .line 4
    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p(J[BIJ)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dstIndex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static i(J)I
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E(J)I

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :goto_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 6
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x3

    add-long/2addr p0, v1

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static j([BI)I
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G([BI)I

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :goto_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 5
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 6
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static k(J)I
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->E(J)I

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr v1, p0

    .line 6
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const-wide/16 v1, 0x3

    add-long/2addr p0, v1

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static l([BI)I
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G([BI)I

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    :cond_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    .line 5
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 6
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static m(J)J
    .locals 7

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I(J)J

    move-result-wide p0

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    .line 5
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, p0

    .line 6
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v2, p0

    .line 7
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, p0

    .line 8
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    .line 9
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x6

    add-long/2addr v2, p0

    .line 10
    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr p0, v2

    .line 11
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v4

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static n([BI)J
    .locals 7

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->J([BI)J

    move-result-wide p0

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 5
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    .line 6
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x28

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    .line 7
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    .line 8
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x18

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    .line 9
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    .line 10
    invoke-static {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    .line 11
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v4

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static o(J)J
    .locals 7

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I(J)J

    move-result-wide p0

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :cond_0
    return-wide p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const-wide/16 v4, 0x1

    add-long/2addr v4, p0

    .line 5
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x2

    add-long/2addr v4, p0

    .line 6
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3

    add-long/2addr v4, p0

    .line 7
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x4

    add-long/2addr v4, p0

    .line 8
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x5

    add-long/2addr v4, p0

    .line 9
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const-wide/16 v4, 0x6

    add-long/2addr v4, p0

    .line 10
    invoke-static {v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr p0, v2

    .line 11
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static p([BI)J
    .locals 7

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->J([BI)J

    move-result-wide p0

    .line 3
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    :cond_0
    return-wide p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    .line 5
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    .line 6
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    .line 7
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    .line 8
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    .line 9
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    .line 10
    invoke-static {p0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    .line 11
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static q(J)S
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M(J)S

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :goto_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method static r([BI)S
    .locals 1

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->N([BI)S

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :goto_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method static s(J)S
    .locals 3

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M(J)S

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :cond_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method static t([BI)S
    .locals 1

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->N([BI)S

    move-result p0

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :cond_0
    return p0

    .line 4
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method static u(J)I
    .locals 4

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-boolean v3, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v3, :cond_0

    add-long/2addr p0, v1

    .line 3
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M(J)S

    move-result p0

    goto :goto_0

    :cond_0
    add-long/2addr p0, v1

    .line 4
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->M(J)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :goto_0
    const p1, 0xffff

    and-int/2addr p0, p1

    :goto_1
    or-int/2addr p0, v0

    return p0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-long/2addr v1, p0

    .line 6
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const-wide/16 v1, 0x2

    add-long/2addr p0, v1

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->B(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1
.end method

.method static v([BI)I
    .locals 2

    .line 1
    sget-boolean v0, Lkg/c1;->a:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-boolean v1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->N([BI)S

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->N([BI)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    :goto_0
    const p1, 0xffff

    and-int/2addr p0, p1

    :goto_1
    or-int/2addr p0, v0

    return p0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    .line 6
    invoke-static {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    .line 7
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->C([BI)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1
.end method

.method static w(Lkg/k;II)Lkg/y0;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lkg/a1;

    invoke-direct {v0, p0, p1, p2}, Lkg/a1;-><init>(Lkg/k;II)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lkg/y0;

    invoke-direct {v0, p0, p1, p2}, Lkg/y0;-><init>(Lkg/k;II)V

    return-object v0
.end method

.method static x(JI)V
    .locals 0

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->D0(JB)V

    return-void
.end method

.method static y([BII)V
    .locals 0

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->F0([BIB)V

    return-void
.end method

.method static z(Lkg/a;JILjava/nio/ByteBuffer;)V
    .locals 12

    move-object v0, p0

    move v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0, p3, v5}, Lkg/a;->f3(II)V

    .line 4
    invoke-static/range {p4 .. p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 5
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    int-to-long v10, v5

    move-wide v8, p1

    invoke-static/range {v6 .. v11}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    .line 6
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, p3, v5}, Lkg/a;->f3(II)V

    .line 9
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int v7, v0, v1

    int-to-long v10, v5

    move-wide v8, p1

    invoke-static/range {v6 .. v11}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->q([BIJJ)V

    .line 10
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ge v5, v1, :cond_3

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p4

    .line 11
    invoke-static/range {v0 .. v5}, Lkg/c1;->O(Lkg/a;JILjava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p3, v5}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method
