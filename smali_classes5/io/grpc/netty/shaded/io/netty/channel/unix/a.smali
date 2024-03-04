.class public final Lio/grpc/netty/shaded/io/netty/channel/unix/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/s$e;


# static fields
.field private static final f:I

.field public static final g:I

.field private static final h:I


# instance fields
.field private final a:J

.field private final b:Lkg/j;

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->a()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->f:I

    mul-int/lit8 v0, v0, 0x2

    .line 2
    sput v0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->g:I

    .line 3
    sget v1, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->a:I

    mul-int v1, v1, v0

    sput v1, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->h:I

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkg/s0;->j(Ljava/nio/ByteBuffer;)Lkg/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lkg/j;->d2(II)Lkg/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;-><init>(Lkg/j;)V

    return-void
.end method

.method public constructor <init>(Lkg/j;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-wide v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->c:J

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e:J

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_1

    :cond_0
    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t;->A:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p1, v0}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    .line 5
    invoke-virtual {p1}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lkg/j;->p1()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->a:J

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1}, Lkg/j;->F()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->a:J

    :goto_2
    return-void
.end method

.method private b(JJI)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e:J

    int-to-long v2, p5

    sub-long/2addr v0, v2

    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->d:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    .line 2
    invoke-virtual {v0}, Lkg/j;->F()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    add-int/lit8 v4, v1, 0x1

    sget v5, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->g:I

    mul-int v4, v4, v5

    if-ge v0, v4, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_2
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->f(I)I

    move-result v0

    .line 4
    sget v1, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->f:I

    add-int v4, v0, v1

    .line 5
    iget-wide v5, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->d:J

    add-long/2addr v5, v2

    iput-wide v5, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->d:J

    .line 6
    iget v5, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_4

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result p5

    if-eqz p5, :cond_3

    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 8
    invoke-static {v0, v1, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I0(JJ)V

    int-to-long p3, v4

    add-long/2addr p3, p1

    .line 9
    invoke-static {p3, p4, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->I0(JJ)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    invoke-virtual {p1, v0, p3, p4}, Lkg/j;->g2(IJ)Lkg/j;

    .line 11
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    invoke-virtual {p1, v4, v2, v3}, Lkg/j;->g2(IJ)Lkg/j;

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v1

    if-eqz v1, :cond_5

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p4, p3

    .line 13
    invoke-static {v0, v1, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G0(JI)V

    int-to-long p3, v4

    add-long/2addr p3, p1

    .line 14
    invoke-static {p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->G0(JI)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    long-to-int p2, p3

    invoke-virtual {p1, v0, p2}, Lkg/j;->e2(II)Lkg/j;

    .line 16
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    invoke-virtual {p1, v4, p5}, Lkg/j;->e2(II)Lkg/j;

    :goto_0
    return v6
.end method

.method private static f(I)I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->g:I

    mul-int v0, v0, p0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lkg/j;

    .line 3
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c(Lkg/j;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lkg/j;II)Z
    .locals 11

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->a:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkg/j;->s1()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-nez p3, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->a:J

    invoke-virtual {p1}, Lkg/j;->p1()J

    move-result-wide v0

    int-to-long p1, p2

    add-long v4, v0, p1

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b(JJI)Z

    move-result p1

    return p1

    .line 5
    :cond_2
    invoke-virtual {p1, p2, p3}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 6
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->a:J

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v3, p1

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b(JJI)Z

    move-result p1

    return p1

    .line 7
    :cond_3
    invoke-virtual {p1, p2, p3}, Lkg/j;->u1(II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 8
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_6

    aget-object v0, p1, p3

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-eqz v8, :cond_5

    .line 10
    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->a:J

    .line 11
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Buffer;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v9, v0

    add-long/2addr v6, v9

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b(JJI)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    sget v3, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->a:I

    if-ne v0, v3, :cond_5

    :cond_4
    return v2

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->d:J

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e:J

    return-wide v0
.end method

.method public h(J)V
    .locals 3

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/channel/unix/b;->c:J

    const-string v2, "maxBytes"

    invoke-static {p1, p2, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->m(JLjava/lang/String;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e:J

    return-void
.end method

.method public i(I)J
    .locals 4

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->a:J

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->f(I)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->b:Lkg/j;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    return-void
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->d:J

    return-wide v0
.end method
