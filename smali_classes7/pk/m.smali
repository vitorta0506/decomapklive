.class public Lpk/m;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/m;->a:[B

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpk/m;->b:[B

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/m;->a:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    iget-object v2, p0, Lpk/m;->b:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method
