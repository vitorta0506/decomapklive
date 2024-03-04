.class public abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;
.super Lpg/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;",
        ">",
        "Lpg/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:[B

.field private static final g:Lkg/j;

.field private static final h:Lkg/j;


# instance fields
.field private c:I

.field private d:F

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->f:[B

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Lkg/s0;->g(I)Lkg/j;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lkg/j;->u2(I)Lkg/j;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lkg/j;->u2(I)Lkg/j;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lkg/s0;->i(Lkg/j;)Lkg/j;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lkg/j;->B()Lkg/j;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->g:Lkg/j;

    .line 5
    array-length v1, v0

    .line 6
    invoke-static {v1}, Lkg/s0;->g(I)Lkg/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkg/j;->A2([B)Lkg/j;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkg/s0;->i(Lkg/j;)Lkg/j;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lkg/j;->B()Lkg/j;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->h:Lkg/j;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpg/m;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    const/high16 v0, 0x43800000    # 256.0f

    .line 3
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->d:F

    .line 4
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->e:F

    return-void
.end method

.method private static H(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x2

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static x(Ljava/lang/Object;)J
    .locals 3

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    invoke-interface {p0}, Lkg/l;->content()Lkg/j;

    move-result-object p0

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p0, Lkg/j;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lkg/j;

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 5
    :cond_1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/p0;->count()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Lkg/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lkg/j;

    invoke-virtual {p0}, Lkg/j;->T1()Lkg/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    invoke-interface {p0}, Lkg/l;->content()Lkg/j;

    move-result-object p0

    invoke-virtual {p0}, Lkg/j;->T1()Lkg/j;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/p0;->retain()Lio/grpc/netty/shaded/io/netty/channel/p0;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xd0a

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-interface {p4, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object p4

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p3, v1}, Lkg/j;->D2(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 4
    invoke-static {p4, v0}, Lkg/n;->b0(Lkg/j;I)Lkg/j;

    .line 5
    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object p3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->g:Lkg/j;

    invoke-virtual {p3}, Lkg/j;->f0()Lkg/j;

    move-result-object p3

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    instance-of p3, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz p3, :cond_2

    .line 9
    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->h:Lkg/j;

    invoke-virtual {p1}, Lkg/j;->f0()Lkg/j;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object p1

    iget p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->e:F

    float-to-int p3, p3

    invoke-interface {p1, p3}, Lkg/k;->l(I)Lkg/j;

    move-result-object p1

    const p3, 0x300d0a

    .line 13
    invoke-static {p1, p3}, Lkg/n;->a0(Lkg/j;I)Lkg/j;

    .line 14
    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Lkg/j;)V

    .line 15
    invoke-static {p1, v0}, Lkg/n;->b0(Lkg/j;I)Lkg/j;

    const p2, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result p3

    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->H(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, p2

    const p2, 0x3f4ccccd    # 0.8f

    iget p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->e:F

    mul-float p4, p4, p2

    add-float/2addr p3, p4

    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->e:F

    .line 17
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 18
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected B(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Lkg/j;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->J()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/u;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkg/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract F(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/j;",
            "TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected G(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected I(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;Z)V"
        }
    .end annotation

    return-void
.end method

.method public s(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/z;

    if-nez v0, :cond_1

    instance-of v0, p1, Lkg/j;

    if-nez v0, :cond_1

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    const/4 v1, 0x2

    const-string v2, ", state: "

    const-string v3, "unexpected message type: "

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    if-nez v0, :cond_3

    .line 3
    move-object v0, p2

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v7

    iget v8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->d:F

    float-to-int v8, v8

    invoke-interface {v7, v8}, Lkg/k;->l(I)Lkg/j;

    move-result-object v7

    .line 5
    invoke-virtual {p0, v7, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->F(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V

    .line 6
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->G(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    :goto_0
    iput v8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    if-ne v8, v5, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0, v0, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->I(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Z)V

    .line 9
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->B(Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;Lkg/j;)V

    const/16 v0, 0xd0a

    .line 10
    invoke-static {v7, v0}, Lkg/n;->b0(Lkg/j;I)Lkg/j;

    const v0, 0x3e4ccccd    # 0.2f

    .line 11
    invoke-virtual {v7}, Lkg/j;->P1()I

    move-result v8

    invoke-static {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->H(I)I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v0

    const v0, 0x3f4ccccd    # 0.8f

    iget v9, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->d:F

    mul-float v9, v9, v0

    add-float/2addr v8, v9

    iput v8, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->d:F

    goto :goto_2

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v7, 0x0

    .line 13
    :goto_2
    instance-of v0, p2, Lkg/j;

    if-eqz v0, :cond_5

    .line 14
    move-object v8, p2

    check-cast v8, Lkg/j;

    .line 15
    invoke-virtual {v8}, Lkg/j;->j1()Z

    move-result v9

    if-nez v9, :cond_5

    .line 16
    invoke-virtual {v8}, Lkg/j;->T1()Lkg/j;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 17
    :cond_5
    instance-of v8, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    if-nez v8, :cond_7

    if-nez v0, :cond_7

    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_11

    .line 18
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 19
    :cond_7
    :goto_3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_b

    if-eq v0, v1, :cond_9

    if-ne v0, v5, :cond_8

    goto :goto_5

    .line 20
    :cond_8
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    :cond_9
    if-eqz v7, :cond_a

    .line 21
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_a
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->x(Ljava/lang/Object;)J

    move-result-wide v8

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->z(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;JLjava/util/List;)V

    goto :goto_6

    .line 23
    :cond_b
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->x(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_e

    if-eqz v7, :cond_c

    .line 24
    invoke-virtual {v7}, Lkg/j;->t2()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v2, v0

    if-ltz p1, :cond_c

    if-eqz v8, :cond_c

    .line 25
    move-object p1, p2

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/p;

    invoke-interface {p1}, Lkg/l;->content()Lkg/j;

    move-result-object p1

    invoke-virtual {v7, p1}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    .line 26
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    if-eqz v7, :cond_d

    .line 27
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_d
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_4
    instance-of p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz p1, :cond_10

    .line 30
    iput v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    goto :goto_6

    :cond_e
    :goto_5
    if-eqz v7, :cond_f

    .line 31
    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 32
    :cond_f
    sget-object p1, Lkg/s0;->d:Lkg/j;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_10
    :goto_6
    instance-of p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz p1, :cond_11

    .line 34
    iput v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    :cond_11
    :goto_7
    return-void

    .line 35
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->c:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
