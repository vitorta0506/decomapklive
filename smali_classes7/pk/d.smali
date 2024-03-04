.class public Lpk/d;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcl/a;


# direct methods
.method public constructor <init>(IILcl/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput p1, p0, Lpk/d;->a:I

    iput p2, p0, Lpk/d;->b:I

    new-instance p1, Lcl/a;

    invoke-direct {p1, p3}, Lcl/a;-><init>(Lcl/a;)V

    iput-object p1, p0, Lpk/d;->c:Lcl/a;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    iput v0, p0, Lpk/d;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    iput v0, p0, Lpk/d;->b:I

    new-instance v0, Lcl/a;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/o;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcl/a;-><init>([B)V

    iput-object v0, p0, Lpk/d;->c:Lcl/a;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lpk/d;
    .locals 1

    instance-of v0, p0, Lpk/d;

    if-eqz v0, :cond_0

    check-cast p0, Lpk/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpk/d;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk/d;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lpk/d;->b:I

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lpk/d;->a:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lpk/d;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/d;->c:Lcl/a;

    invoke-virtual {v2}, Lcl/a;->c()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Lcl/a;
    .locals 2

    new-instance v0, Lcl/a;

    iget-object v1, p0, Lpk/d;->c:Lcl/a;

    invoke-direct {v0, v1}, Lcl/a;-><init>(Lcl/a;)V

    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lpk/d;->a:I

    return v0
.end method
