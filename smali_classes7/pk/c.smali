.class public Lpk/c;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:[B


# direct methods
.method public constructor <init>(IILcl/b;Lcl/i;Lcl/h;Lcl/h;Lcl/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput p1, p0, Lpk/c;->a:I

    iput p2, p0, Lpk/c;->b:I

    invoke-virtual {p3}, Lcl/b;->e()[B

    move-result-object p1

    iput-object p1, p0, Lpk/c;->c:[B

    invoke-virtual {p4}, Lcl/i;->h()[B

    move-result-object p1

    iput-object p1, p0, Lpk/c;->d:[B

    invoke-virtual {p7}, Lcl/a;->c()[B

    move-result-object p1

    iput-object p1, p0, Lpk/c;->e:[B

    invoke-virtual {p5}, Lcl/h;->a()[B

    move-result-object p1

    iput-object p1, p0, Lpk/c;->f:[B

    invoke-virtual {p6}, Lcl/h;->a()[B

    move-result-object p1

    iput-object p1, p0, Lpk/c;->g:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    iput v0, p0, Lpk/c;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    iput v0, p0, Lpk/c;->b:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    iput-object v0, p0, Lpk/c;->c:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    iput-object v0, p0, Lpk/c;->d:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    iput-object v0, p0, Lpk/c;->f:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    iput-object v0, p0, Lpk/c;->g:[B

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/o;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    iput-object p1, p0, Lpk/c;->e:[B

    return-void
.end method

.method public static z(Ljava/lang/Object;)Lpk/c;
    .locals 1

    instance-of v0, p0, Lpk/c;

    if-eqz v0, :cond_0

    check-cast p0, Lpk/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpk/c;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk/c;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lpk/c;->b:I

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lpk/c;->a:I

    return v0
.end method

.method public G()Lcl/h;
    .locals 2

    new-instance v0, Lcl/h;

    iget-object v1, p0, Lpk/c;->f:[B

    invoke-direct {v0, v1}, Lcl/h;-><init>([B)V

    return-object v0
.end method

.method public H()Lcl/h;
    .locals 2

    new-instance v0, Lcl/h;

    iget-object v1, p0, Lpk/c;->g:[B

    invoke-direct {v0, v1}, Lcl/h;-><init>([B)V

    return-object v0
.end method

.method public I()Lcl/a;
    .locals 2

    new-instance v0, Lcl/a;

    iget-object v1, p0, Lpk/c;->e:[B

    invoke-direct {v0, v1}, Lcl/a;-><init>([B)V

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lpk/c;->a:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lpk/c;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/c;->c:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/c;->d:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/c;->f:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/c;->g:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/c;->e:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Lcl/b;
    .locals 2

    new-instance v0, Lcl/b;

    iget-object v1, p0, Lpk/c;->c:[B

    invoke-direct {v0, v1}, Lcl/b;-><init>([B)V

    return-object v0
.end method

.method public y()Lcl/i;
    .locals 3

    new-instance v0, Lcl/i;

    invoke-virtual {p0}, Lpk/c;->x()Lcl/b;

    move-result-object v1

    iget-object v2, p0, Lpk/c;->d:[B

    invoke-direct {v0, v1, v2}, Lcl/i;-><init>(Lcl/b;[B)V

    return-object v0
.end method
