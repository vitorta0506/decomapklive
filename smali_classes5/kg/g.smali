.class abstract Lkg/g;
.super Lkg/r0;
.source "SourceFile"


# instance fields
.field private final c:Z

.field private final d:Lkg/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lkg/g;

    return-void
.end method

.method constructor <init>(Lkg/a;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lkg/r0;-><init>(Lkg/j;)V

    .line 2
    iput-object p1, p0, Lkg/g;->d:Lkg/a;

    .line 3
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    invoke-virtual {p0}, Lkg/r0;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lkg/g;->c:Z

    return-void
.end method


# virtual methods
.method public final C2(I)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/g;->I2(I)Lkg/j;

    return-object p0
.end method

.method public final E2(I)Lkg/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lkg/a;->q3(I)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    iget v2, v0, Lkg/a;->b:I

    iget-boolean v3, p0, Lkg/g;->c:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lkg/g;->P2(Lkg/a;II)V

    .line 3
    iget-object p1, p0, Lkg/g;->d:Lkg/a;

    iget v0, p1, Lkg/a;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lkg/a;->b:I

    return-object p0
.end method

.method public final G2(J)Lkg/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lkg/a;->q3(I)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    iget v2, v0, Lkg/a;->b:I

    iget-boolean v3, p0, Lkg/g;->c:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    :goto_0
    invoke-virtual {p0, v0, v2, p1, p2}, Lkg/g;->Q2(Lkg/a;IJ)V

    .line 3
    iget-object p1, p0, Lkg/g;->d:Lkg/a;

    iget p2, p1, Lkg/a;->b:I

    add-int/2addr p2, v1

    iput p2, p1, Lkg/a;->b:I

    return-object p0
.end method

.method public final I2(I)Lkg/j;
    .locals 4

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lkg/a;->q3(I)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    iget v2, v0, Lkg/a;->b:I

    iget-boolean v3, p0, Lkg/g;->c:Z

    int-to-short p1, p1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lkg/g;->R2(Lkg/a;IS)V

    .line 3
    iget-object p1, p0, Lkg/g;->d:Lkg/a;

    iget v0, p1, Lkg/a;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lkg/a;->b:I

    return-object p0
.end method

.method protected abstract M2(Lkg/a;I)I
.end method

.method protected abstract N2(Lkg/a;I)J
.end method

.method protected abstract O2(Lkg/a;I)S
.end method

.method public final P0(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    invoke-virtual {p0, v0, p1}, Lkg/g;->O2(Lkg/a;I)S

    move-result p1

    .line 3
    iget-boolean v0, p0, Lkg/g;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p1

    :goto_0
    return p1
.end method

.method protected abstract P2(Lkg/a;II)V
.end method

.method protected abstract Q2(Lkg/a;IJ)V
.end method

.method protected abstract R2(Lkg/a;IS)V
.end method

.method public final S0(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lkg/g;->getInt(I)I

    move-result p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final Y0(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lkg/g;->P0(I)S

    move-result p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public final e2(II)Lkg/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    iget-boolean v1, p0, Lkg/g;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lkg/g;->P2(Lkg/a;II)V

    return-object p0
.end method

.method public final g2(IJ)Lkg/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    iget-boolean v1, p0, Lkg/g;->c:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lkg/g;->Q2(Lkg/a;IJ)V

    return-object p0
.end method

.method public final getInt(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    invoke-virtual {p0, v0, p1}, Lkg/g;->M2(Lkg/a;I)I

    move-result p1

    .line 3
    iget-boolean v0, p0, Lkg/g;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    invoke-virtual {p0, v0, p1}, Lkg/g;->N2(Lkg/a;I)J

    move-result-wide v0

    .line 3
    iget-boolean p1, p0, Lkg/g;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final i2(II)Lkg/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lkg/a;->f3(II)V

    .line 2
    iget-object v0, p0, Lkg/g;->d:Lkg/a;

    iget-boolean v1, p0, Lkg/g;->c:Z

    int-to-short p2, p2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lkg/g;->R2(Lkg/a;IS)V

    return-object p0
.end method
