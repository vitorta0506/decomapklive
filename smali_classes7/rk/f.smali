.class Lrk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lrk/e;

.field private final b:[B

.field private final c:I

.field private final d:[B


# direct methods
.method public constructor <init>(Lrk/e;[BI[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrk/f;->a:Lrk/e;

    iput-object p2, p0, Lrk/f;->b:[B

    iput p3, p0, Lrk/f;->c:I

    iput-object p4, p0, Lrk/f;->d:[B

    return-void
.end method


# virtual methods
.method a()Lrk/q;
    .locals 4

    new-instance v0, Lrk/q;

    iget-object v1, p0, Lrk/f;->b:[B

    iget-object v2, p0, Lrk/f;->d:[B

    iget-object v3, p0, Lrk/f;->a:Lrk/e;

    invoke-virtual {v3}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v3

    invoke-static {v3}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrk/q;-><init>([B[BLorg/bouncycastle/crypto/e;)V

    iget v1, p0, Lrk/f;->c:I

    invoke-virtual {v0, v1}, Lrk/q;->e(I)V

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lrk/f;->b:[B

    return-object v0
.end method

.method public c()Lrk/e;
    .locals 1

    iget-object v0, p0, Lrk/f;->a:Lrk/e;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lrk/f;->c:I

    return v0
.end method

.method e(Lrk/n;[[B)Lrk/i;
    .locals 7

    const/16 v0, 0x20

    new-array v5, v0, [B

    invoke-virtual {p0}, Lrk/f;->a()Lrk/q;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lrk/q;->d(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Lrk/q;->a([BZ)V

    iget-object v0, p0, Lrk/f;->a:Lrk/e;

    invoke-virtual {v0}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v4

    invoke-virtual {p0}, Lrk/f;->b()[B

    move-result-object v0

    invoke-static {v0, v4}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    invoke-virtual {p0}, Lrk/f;->d()I

    move-result v0

    invoke-static {v0, v4}, Lrk/p;->c(ILorg/bouncycastle/crypto/e;)V

    const/16 v0, -0x7e7f

    invoke-static {v0, v4}, Lrk/p;->b(SLorg/bouncycastle/crypto/e;)V

    invoke-static {v5, v4}, Lrk/p;->a([BLorg/bouncycastle/crypto/e;)V

    new-instance v0, Lrk/i;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lrk/i;-><init>(Lrk/f;Lrk/n;Lorg/bouncycastle/crypto/e;[B[[B)V

    return-object v0
.end method
