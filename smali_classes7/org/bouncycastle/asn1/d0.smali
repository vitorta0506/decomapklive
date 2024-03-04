.class public Lorg/bouncycastle/asn1/d0;
.super Lorg/bouncycastle/asn1/o;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:[Lorg/bouncycastle/asn1/o;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/d0;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/d0;-><init>([B[Lorg/bouncycastle/asn1/o;I)V

    return-void
.end method

.method private constructor <init>([B[Lorg/bouncycastle/asn1/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/o;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/d0;->c:[Lorg/bouncycastle/asn1/o;

    iput p3, p0, Lorg/bouncycastle/asn1/d0;->b:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/o;)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/d0;-><init>([Lorg/bouncycastle/asn1/o;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/o;I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/d0;->R([Lorg/bouncycastle/asn1/o;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/d0;-><init>([B[Lorg/bouncycastle/asn1/o;I)V

    return-void
.end method

.method static synthetic N(Lorg/bouncycastle/asn1/d0;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/d0;->b:I

    return p0
.end method

.method static synthetic O(Lorg/bouncycastle/asn1/d0;)[Lorg/bouncycastle/asn1/o;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/d0;->c:[Lorg/bouncycastle/asn1/o;

    return-object p0
.end method

.method static P(Lorg/bouncycastle/asn1/s;)Lorg/bouncycastle/asn1/d0;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/o;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/d0;

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/d0;-><init>([Lorg/bouncycastle/asn1/o;)V

    return-object p0
.end method

.method private static R([Lorg/bouncycastle/asn1/o;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_0

    :try_start_0
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception converting octets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Q()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/d0;->c:[Lorg/bouncycastle/asn1/o;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/d0$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/d0$a;-><init>(Lorg/bouncycastle/asn1/d0;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/d0$b;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/d0$b;-><init>(Lorg/bouncycastle/asn1/d0;)V

    return-object v0
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/d0;->Q()Ljava/util/Enumeration;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/q;->p(ZILjava/util/Enumeration;)V

    return-void
.end method

.method z()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/d0;->Q()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/e;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/r;->z()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    return v1
.end method
