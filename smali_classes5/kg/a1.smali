.class Lkg/a1;
.super Lkg/y0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lkg/k;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkg/y0;-><init>(Lkg/k;II)V

    return-void
.end method


# virtual methods
.method protected F3(I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected G3(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public I(I)Lkg/j;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lkg/a;->i3(I)V

    .line 2
    invoke-virtual {p0}, Lkg/u0;->F()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lkg/a;->z3(I)V

    .line 4
    iget-object v0, p0, Lkg/u0;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, p1}, Lkg/a1;->O3(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lkg/y0;->M3(Ljava/nio/ByteBuffer;Z)V

    return-object p0
.end method

.method O3(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->N0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
