.class public Loj/o;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:[Loj/n;


# direct methods
.method public constructor <init>(Loj/n;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Loj/n;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Loj/o;->a:[Loj/n;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    new-array v0, v0, [Loj/n;

    iput-object v0, p0, Loj/o;->a:[Loj/n;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Loj/o;->a:[Loj/n;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Loj/n;->x(Ljava/lang/Object;)Loj/n;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static x(Ljava/lang/Object;)Loj/o;
    .locals 1

    instance-of v0, p0, Loj/o;

    if-eqz v0, :cond_0

    check-cast p0, Loj/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/o;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/o;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Lorg/bouncycastle/asn1/y;Z)Loj/o;
    .locals 1

    new-instance v0, Loj/o;

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/s;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/o;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/a1;

    iget-object v1, p0, Loj/o;->a:[Loj/n;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/a1;-><init>([Lorg/bouncycastle/asn1/e;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Loj/o;->a:[Loj/n;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Loj/o;->a:[Loj/n;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
