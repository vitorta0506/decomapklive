.class public Lorg/bouncycastle/asn1/c;
.super Lorg/bouncycastle/asn1/r;
.source "SourceFile"


# static fields
.field public static final b:Lorg/bouncycastle/asn1/c;

.field public static final c:Lorg/bouncycastle/asn1/c;


# instance fields
.field private final a:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/c;-><init>(B)V

    sput-object v0, Lorg/bouncycastle/asn1/c;->b:Lorg/bouncycastle/asn1/c;

    new-instance v0, Lorg/bouncycastle/asn1/c;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/c;-><init>(B)V

    sput-object v0, Lorg/bouncycastle/asn1/c;->c:Lorg/bouncycastle/asn1/c;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    iput-byte p1, p0, Lorg/bouncycastle/asn1/c;->a:B

    return-void
.end method

.method static K([B)Lorg/bouncycastle/asn1/c;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/c;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/c;-><init>(B)V

    return-object v0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/c;->b:Lorg/bouncycastle/asn1/c;

    return-object p0

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/c;->c:Lorg/bouncycastle/asn1/c;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/c;

    return-object p0
.end method

.method public static M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/c;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/y;->M()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/bouncycastle/asn1/c;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/c;->K([B)Lorg/bouncycastle/asn1/c;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/c;->L(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c;

    move-result-object p0

    return-object p0
.end method

.method public static N(Z)Lorg/bouncycastle/asn1/c;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/c;->c:Lorg/bouncycastle/asn1/c;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/c;->b:Lorg/bouncycastle/asn1/c;

    :goto_0
    return-object p0
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method I()Lorg/bouncycastle/asn1/r;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/c;->c:Lorg/bouncycastle/asn1/c;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/c;->b:Lorg/bouncycastle/asn1/c;

    :goto_0
    return-object v0
.end method

.method public O()Z
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/asn1/c;->a:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method x(Lorg/bouncycastle/asn1/r;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/c;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lorg/bouncycastle/asn1/c;->a:B

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/q;->j(ZIB)V

    return-void
.end method

.method z()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
