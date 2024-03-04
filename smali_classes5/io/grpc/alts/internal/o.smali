.class final Lio/grpc/alts/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final a:[Ljava/nio/ByteBuffer;

.field private final b:[Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 2
    iput-object v1, p0, Lio/grpc/alts/internal/o;->a:[Ljava/nio/ByteBuffer;

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lio/grpc/alts/internal/o;->b:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static a(Lkg/j;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    instance-of v0, p0, Lkg/o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkg/j;->s1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v1

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkg/j;->t1()[Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method b(Lkg/j;)[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/grpc/alts/internal/o;->a:[Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lio/grpc/alts/internal/o;->a(Lkg/j;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method c(Lkg/j;)[Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v1

    .line 3
    invoke-virtual {p1, v1}, Lkg/j;->R1(I)Lkg/j;

    .line 4
    invoke-virtual {p1}, Lkg/j;->F()I

    move-result v2

    invoke-virtual {p1, v2}, Lkg/j;->L2(I)Lkg/j;

    .line 5
    :try_start_0
    iget-object v2, p0, Lio/grpc/alts/internal/o;->b:[Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lio/grpc/alts/internal/o;->a(Lkg/j;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v0}, Lkg/j;->R1(I)Lkg/j;

    .line 7
    invoke-virtual {p1, v1}, Lkg/j;->L2(I)Lkg/j;

    return-object v2

    :catchall_0
    move-exception v2

    .line 8
    invoke-virtual {p1, v0}, Lkg/j;->R1(I)Lkg/j;

    .line 9
    invoke-virtual {p1, v1}, Lkg/j;->L2(I)Lkg/j;

    throw v2
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/o;->a:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/o;->b:[Ljava/nio/ByteBuffer;

    aput-object v2, v0, v1

    return-void
.end method
