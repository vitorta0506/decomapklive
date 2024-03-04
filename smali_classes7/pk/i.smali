.class public Lpk/i;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:Lorg/bouncycastle/asn1/k;

.field private final b:Loj/a;


# direct methods
.method public constructor <init>(Loj/a;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/k;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    iput-object v0, p0, Lpk/i;->a:Lorg/bouncycastle/asn1/k;

    iput-object p1, p0, Lpk/i;->b:Loj/a;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lpk/i;->a:Lorg/bouncycastle/asn1/k;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object p1

    iput-object p1, p0, Lpk/i;->b:Loj/a;

    return-void
.end method

.method public static final x(Ljava/lang/Object;)Lpk/i;
    .locals 1

    instance-of v0, p0, Lpk/i;

    if-eqz v0, :cond_0

    check-cast p0, Lpk/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpk/i;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk/i;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    iget-object v1, p0, Lpk/i;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpk/i;->b:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public y()Loj/a;
    .locals 1

    iget-object v0, p0, Lpk/i;->b:Loj/a;

    return-object v0
.end method
