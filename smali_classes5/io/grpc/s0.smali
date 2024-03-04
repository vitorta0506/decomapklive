.class public final Lio/grpc/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/s0$l;,
        Lio/grpc/s0$k;,
        Lio/grpc/s0$c;,
        Lio/grpc/s0$j;,
        Lio/grpc/s0$e;,
        Lio/grpc/s0$i;,
        Lio/grpc/s0$g;,
        Lio/grpc/s0$d;,
        Lio/grpc/s0$f;,
        Lio/grpc/s0$h;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/logging/Logger;

.field public static final d:Lio/grpc/s0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$f<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final e:Lio/grpc/s0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/google/common/io/BaseEncoding;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/s0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/s0;->c:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/s0$a;

    invoke-direct {v0}, Lio/grpc/s0$a;-><init>()V

    sput-object v0, Lio/grpc/s0;->d:Lio/grpc/s0$f;

    .line 3
    new-instance v0, Lio/grpc/s0$b;

    invoke-direct {v0}, Lio/grpc/s0$b;-><init>()V

    sput-object v0, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    .line 4
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->n()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lio/grpc/s0;->f:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lio/grpc/s0;->b:I

    .line 5
    iput-object p2, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    return-void
.end method

.method varargs constructor <init>(I[[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/s0;-><init>(I[Ljava/lang/Object;)V

    return-void
.end method

.method varargs constructor <init>([[B)V
    .locals 1

    .line 1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, p1}, Lio/grpc/s0;-><init>(I[[B)V

    return-void
.end method

.method private A(ILio/grpc/s0$i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/grpc/s0$i<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/s0;->w(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, [B

    invoke-virtual {p2, p1}, Lio/grpc/s0$i;->i([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    check-cast p1, Lio/grpc/s0$j;

    invoke-virtual {p1, p2}, Lio/grpc/s0$j;->d(Lio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lio/grpc/s0;)I
    .locals 0

    iget p0, p0, Lio/grpc/s0;->b:I

    return p0
.end method

.method static synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/s0;->c:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic c(Ljava/io/InputStream;)[B
    .locals 0

    invoke-static {p0}, Lio/grpc/s0;->v(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lio/grpc/s0;I)[B
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/s0;->s(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lio/grpc/s0;[B[B)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/s0;->g([B[B)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lio/grpc/s0;ILio/grpc/s0$i;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/s0;->A(ILio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private g([B[B)Z
    .locals 0

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private h()I
    .locals 1

    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j(I)V
    .locals 3

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/s0;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    return-void
.end method

.method private n()Z
    .locals 1

    iget v0, p0, Lio/grpc/s0;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()I
    .locals 1

    iget v0, p0, Lio/grpc/s0;->b:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private p()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/s0;->h()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/s0;->j(I)V

    :cond_1
    return-void
.end method

.method private r(I[B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aput-object p2, v0, p1

    return-void
.end method

.method private s(I)[B
    .locals 1

    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    check-cast p1, [B

    return-object p1
.end method

.method private static v(Ljava/io/InputStream;)[B
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/c;->e(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failure reading serialized stream"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private w(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private x(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/s0;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/s0;->j(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method private y(I[B)V
    .locals 1

    iget-object v0, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aput-object p2, v0, p1

    return-void
.end method

.method private z(I)[B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/s0;->w(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, [B

    return-object p1

    .line 4
    :cond_0
    check-cast p1, Lio/grpc/s0$j;

    invoke-virtual {p1}, Lio/grpc/s0$j;->c()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public i(Lio/grpc/s0$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/s0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lio/grpc/s0;->b:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lio/grpc/s0$i;->a()[B

    move-result-object v2

    invoke-direct {p0, v0}, Lio/grpc/s0;->s(I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/s0;->g([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, v0}, Lio/grpc/s0;->s(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/s0;->r(I[B)V

    .line 5
    invoke-direct {p0, v0}, Lio/grpc/s0;->w(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/s0;->x(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    iput v1, p0, Lio/grpc/s0;->b:I

    return-void
.end method

.method public k(Lio/grpc/s0$i;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/s0;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/grpc/s0$i;->a()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/s0;->s(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/s0;->g([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lio/grpc/s0;->A(ILio/grpc/s0$i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Lio/grpc/s0$i;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lio/grpc/s0;->b:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/grpc/s0$i;->a()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/s0;->s(I)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lio/grpc/s0;->g([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lio/grpc/s0$h;

    invoke-direct {v1, p0, p1, v0, v2}, Lio/grpc/s0$h;-><init>(Lio/grpc/s0;Lio/grpc/s0$i;ILio/grpc/s0$a;)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method m()I
    .locals 1

    iget v0, p0, Lio/grpc/s0;->b:I

    return v0
.end method

.method public q(Lio/grpc/s0;)V
    .locals 5

    .line 1
    invoke-direct {p1}, Lio/grpc/s0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/grpc/s0;->h()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-direct {p0}, Lio/grpc/s0;->n()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p1}, Lio/grpc/s0;->o()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    :cond_1
    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v0

    invoke-direct {p1}, Lio/grpc/s0;->o()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lio/grpc/s0;->j(I)V

    .line 5
    :cond_2
    iget-object v0, p1, Lio/grpc/s0;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v3

    invoke-direct {p1}, Lio/grpc/s0;->o()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p0, Lio/grpc/s0;->b:I

    iget p1, p1, Lio/grpc/s0;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/s0;->b:I

    return-void
.end method

.method public t(Lio/grpc/s0$i;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/s0$i<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lio/grpc/s0;->p()V

    .line 4
    iget v0, p0, Lio/grpc/s0;->b:I

    invoke-virtual {p1}, Lio/grpc/s0$i;->a()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/s0;->r(I[B)V

    .line 5
    invoke-virtual {p1}, Lio/grpc/s0$i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lio/grpc/s0;->b:I

    invoke-static {p1, p2}, Lio/grpc/s0$j;->a(Lio/grpc/s0$i;Ljava/lang/Object;)Lio/grpc/s0$j;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/s0;->x(ILjava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lio/grpc/s0;->b:I

    invoke-virtual {p1, p2}, Lio/grpc/s0$i;->k(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/s0;->y(I[B)V

    .line 8
    :goto_0
    iget p1, p0, Lio/grpc/s0;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/s0;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lio/grpc/s0;->b:I

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/s0;->s(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/common/base/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "-bin"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    sget-object v2, Lio/grpc/s0;->f:Lcom/google/common/io/BaseEncoding;

    invoke-direct {p0, v1}, Lio/grpc/s0;->z(I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding;->g([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/s0;->z(I)[B

    move-result-object v3

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()[[B
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v0

    new-array v0, v0, [[B

    .line 2
    iget-object v1, p0, Lio/grpc/s0;->a:[Ljava/lang/Object;

    instance-of v2, v1, [[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/s0;->o()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lio/grpc/s0;->b:I

    if-ge v3, v1, :cond_1

    mul-int/lit8 v1, v3, 0x2

    .line 5
    invoke-direct {p0, v3}, Lio/grpc/s0;->s(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-direct {p0, v3}, Lio/grpc/s0;->z(I)[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
