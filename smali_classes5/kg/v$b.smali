.class final Lkg/v$b;
.super Lkg/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkg/v<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lkg/d0;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lkg/v;-><init>(Lkg/d0;IIII)V

    return-void
.end method

.method private static K(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->i(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected A(I)Lkg/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/c0<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lkg/v;->G:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lkg/j0;->R3(I)Lkg/j0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lkg/f0;->Q3(I)Lkg/f0;

    move-result-object p1

    return-object p1
.end method

.method protected B(IIII)Lkg/w;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lkg/w<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkg/v;->p:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p4}, Lkg/v$b;->K(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 3
    new-instance v0, Lkg/w;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v4

    move v5, p1

    move v6, p3

    move v7, p4

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lkg/w;-><init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    return-object v0

    :cond_0
    add-int/2addr v0, p4

    .line 4
    invoke-static {v0}, Lkg/v$b;->K(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 5
    iget v0, p0, Lkg/v;->p:I

    invoke-static {v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 6
    new-instance v0, Lkg/w;

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move v6, p3

    move v7, p4

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lkg/w;-><init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    return-object v0
.end method

.method protected E(I)Lkg/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkg/w<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkg/v;->p:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lkg/v$b;->K(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    new-instance v1, Lkg/w;

    invoke-direct {v1, p0, v0, v0, p1}, Lkg/w;-><init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v1

    :cond_0
    add-int/2addr v0, p1

    .line 4
    invoke-static {v0}, Lkg/v$b;->K(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    iget v1, p0, Lkg/v;->p:I

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->h(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    new-instance v2, Lkg/w;

    invoke-direct {v2, p0, v0, v1, p1}, Lkg/w;-><init>(Lkg/v;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v2
.end method

.method protected L(Ljava/nio/ByteBuffer;ILkg/c0;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lkg/c0<",
            "Ljava/nio/ByteBuffer;",
            ">;I)V"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    sget-boolean v0, Lkg/v;->G:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long p1, p2

    add-long v2, v0, p1

    iget-object p1, p3, Lkg/c0;->q:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->u(Ljava/nio/ByteBuffer;)J

    move-result-wide p1

    iget p3, p3, Lkg/c0;->r:I

    int-to-long v0, p3

    add-long v4, p1, v0

    int-to-long v6, p4

    .line 4
    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->o(JJJ)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    invoke-virtual {p3}, Lkg/c0;->L3()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int/2addr p2, p4

    invoke-virtual {v1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    iget p2, p3, Lkg/c0;->r:I

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method protected r(Lkg/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->X0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lkg/w;->b:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lkg/w;->b:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->z(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic z(Ljava/lang/Object;ILkg/c0;I)V
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkg/v$b;->L(Ljava/nio/ByteBuffer;ILkg/c0;I)V

    return-void
.end method
