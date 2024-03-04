.class public Lpk/b;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcl/a;

.field private final d:Loj/a;


# direct methods
.method public constructor <init>(IILcl/a;Loj/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput p1, p0, Lpk/b;->a:I

    iput p2, p0, Lpk/b;->b:I

    new-instance p1, Lcl/a;

    invoke-virtual {p3}, Lcl/a;->c()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcl/a;-><init>([B)V

    iput-object p1, p0, Lpk/b;->c:Lcl/a;

    iput-object p4, p0, Lpk/b;->d:Loj/a;

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

    iput v0, p0, Lpk/b;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    iput v0, p0, Lpk/b;->b:I

    new-instance v0, Lcl/a;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/o;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcl/a;-><init>([B)V

    iput-object v0, p0, Lpk/b;->c:Lcl/a;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object p1

    iput-object p1, p0, Lpk/b;->d:Loj/a;

    return-void
.end method

.method public static z(Ljava/lang/Object;)Lpk/b;
    .locals 1

    instance-of v0, p0, Lpk/b;

    if-eqz v0, :cond_0

    check-cast p0, Lpk/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpk/b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk/b;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lpk/b;->a:I

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lpk/b;->b:I

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lpk/b;->a:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lpk/b;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/b;->c:Lcl/a;

    invoke-virtual {v2}, Lcl/a;->c()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpk/b;->d:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Loj/a;
    .locals 1

    iget-object v0, p0, Lpk/b;->d:Loj/a;

    return-object v0
.end method

.method public y()Lcl/a;
    .locals 1

    iget-object v0, p0, Lpk/b;->c:Lcl/a;

    return-object v0
.end method
