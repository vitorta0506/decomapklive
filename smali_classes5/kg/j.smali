.class public abstract Lkg/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/s;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/util/s;",
        "Ljava/lang/Comparable<",
        "Lkg/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A0(ILkg/j;II)Lkg/j;
.end method

.method public abstract A1(Ljava/io/OutputStream;I)Lkg/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract A2([B)Lkg/j;
.end method

.method public abstract B()Lkg/j;
.end method

.method public abstract B1(Ljava/nio/ByteBuffer;)Lkg/j;
.end method

.method public abstract B2([BII)Lkg/j;
.end method

.method public abstract C0(I[B)Lkg/j;
.end method

.method public abstract C1([B)Lkg/j;
.end method

.method public abstract C2(I)Lkg/j;
.end method

.method public abstract D1([BII)Lkg/j;
.end method

.method public abstract D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
.end method

.method public abstract E0(I[BII)Lkg/j;
.end method

.method public abstract E1()I
.end method

.method public abstract E2(I)Lkg/j;
.end method

.method public abstract F()I
.end method

.method public abstract F0(I)I
.end method

.method public abstract F1()I
.end method

.method public abstract F2(I)Lkg/j;
.end method

.method public abstract G0(I)J
.end method

.method public abstract G1()J
.end method

.method public abstract G2(J)Lkg/j;
.end method

.method public abstract H0(I)I
.end method

.method public abstract H1()I
.end method

.method public abstract H2(I)Lkg/j;
.end method

.method public abstract I(I)Lkg/j;
.end method

.method public abstract I1(I)Lkg/j;
.end method

.method public abstract I2(I)Lkg/j;
.end method

.method public abstract J1()S
.end method

.method public abstract J2(I)Lkg/j;
.end method

.method public abstract K1(I)Lkg/j;
.end method

.method public abstract K2()I
.end method

.method public abstract L()Lkg/j;
.end method

.method public abstract L1()S
.end method

.method public abstract L2(I)Lkg/j;
.end method

.method public abstract M(Lkg/j;)I
.end method

.method public abstract M1()J
.end method

.method public abstract N()Lkg/j;
.end method

.method public abstract N1()I
.end method

.method public abstract O1()I
.end method

.method public abstract P()Lkg/k;
.end method

.method public abstract P0(I)S
.end method

.method public abstract P1()I
.end method

.method public abstract Q(II)Lkg/j;
.end method

.method public abstract Q0(I)S
.end method

.method public abstract Q1()I
.end method

.method public abstract R0(I)S
.end method

.method public abstract R1(I)Lkg/j;
.end method

.method public abstract S0(I)J
.end method

.method public abstract S1()Lkg/j;
.end method

.method public abstract T0(I)J
.end method

.method public abstract T1()Lkg/j;
.end method

.method public abstract U1(I)Lkg/j;
.end method

.method public abstract V1()Lkg/j;
.end method

.method public abstract W1()Lkg/j;
.end method

.method public abstract X0(I)I
.end method

.method public abstract X1(II)Lkg/j;
.end method

.method public abstract Y0(I)I
.end method

.method public abstract Y1(ILjava/nio/channels/ScatteringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract Z1(ILjava/nio/ByteBuffer;)Lkg/j;
.end method

.method public abstract a1()Z
.end method

.method public abstract a2(ILkg/j;II)Lkg/j;
.end method

.method public abstract b1()Z
.end method

.method public abstract b2(I[BII)Lkg/j;
.end method

.method public abstract c0()Lkg/j;
.end method

.method public abstract c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkg/j;

    invoke-virtual {p0, p1}, Lkg/j;->M(Lkg/j;)I

    move-result p1

    return p1
.end method

.method public abstract d1(IIB)I
.end method

.method public abstract d2(II)Lkg/j;
.end method

.method public abstract e1(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract e2(II)Lkg/j;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f0()Lkg/j;
.end method

.method f1()Z
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->refCnt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract f2(II)Lkg/j;
.end method

.method public g1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract g2(IJ)Lkg/j;
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public abstract h1()Z
.end method

.method public abstract h2(II)Lkg/j;
.end method

.method public abstract hashCode()I
.end method

.method public abstract i1()Z
.end method

.method public abstract i2(II)Lkg/j;
.end method

.method public abstract j1()Z
.end method

.method public abstract j2(II)Lkg/j;
.end method

.method public abstract k1(I)Z
.end method

.method public abstract k2(II)Lkg/j;
.end method

.method public abstract l1()Lkg/j;
.end method

.method public abstract l2(I)Lkg/j;
.end method

.method public abstract m0(IZ)I
.end method

.method public abstract m1()I
.end method

.method public abstract m2()Lkg/j;
.end method

.method public abstract n0(I)Lkg/j;
.end method

.method public n1()I
    .locals 1

    invoke-virtual {p0}, Lkg/j;->t2()I

    move-result v0

    return v0
.end method

.method public abstract n2(II)Lkg/j;
.end method

.method public abstract o0(IILio/grpc/netty/shaded/io/netty/util/g;)I
.end method

.method public abstract o1()I
.end method

.method public abstract o2(IILjava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract p0(Lio/grpc/netty/shaded/io/netty/util/g;)I
.end method

.method public abstract p1()J
.end method

.method public abstract p2(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract q0()Z
.end method

.method public abstract q1()Ljava/nio/ByteBuffer;
.end method

.method public abstract q2()Lkg/j;
.end method

.method public abstract r1(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract r2(Ljava/lang/Object;)Lkg/j;
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public abstract s1()I
.end method

.method public abstract s2()Lkg/j;
.end method

.method public abstract t1()[Ljava/nio/ByteBuffer;
.end method

.method public abstract t2()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/j;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method public abstract u0(I)B
.end method

.method public abstract u1(II)[Ljava/nio/ByteBuffer;
.end method

.method public abstract u2(I)Lkg/j;
.end method

.method public abstract v0(ILjava/nio/channels/GatheringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract v1()Ljava/nio/ByteOrder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract v2(Ljava/nio/channels/ScatteringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w0(ILjava/io/OutputStream;I)Lkg/j;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract w1(Ljava/nio/ByteOrder;)Lkg/j;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract w2(Ljava/nio/ByteBuffer;)Lkg/j;
.end method

.method public abstract x1()B
.end method

.method public abstract x2(Lkg/j;)Lkg/j;
.end method

.method public abstract y()[B
.end method

.method public abstract y0(ILjava/nio/ByteBuffer;)Lkg/j;
.end method

.method public abstract y1(Ljava/nio/channels/GatheringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract y2(Lkg/j;I)Lkg/j;
.end method

.method public abstract z()I
.end method

.method public abstract z1(I)Lkg/j;
.end method

.method public abstract z2(Lkg/j;II)Lkg/j;
.end method
