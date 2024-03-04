.class public Lek/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private a:Lfk/e;

.field private b:[B

.field private c:Lfk/i;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek/d;->a:Lfk/e;

    invoke-virtual {p2}, Lfk/i;->y()Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lek/d;->c:Lfk/i;

    iput-object p3, p0, Lek/d;->d:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lek/d;->e:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lek/d;->b:[B

    return-void
.end method

.method public constructor <init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek/d;->a:Lfk/e;

    invoke-virtual {p2}, Lfk/i;->y()Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lek/d;->c:Lfk/i;

    iput-object p3, p0, Lek/d;->d:Ljava/math/BigInteger;

    iput-object p4, p0, Lek/d;->e:Ljava/math/BigInteger;

    iput-object p5, p0, Lek/d;->b:[B

    return-void
.end method


# virtual methods
.method public a()Lfk/e;
    .locals 1

    iget-object v0, p0, Lek/d;->a:Lfk/e;

    return-object v0
.end method

.method public b()Lfk/i;
    .locals 1

    iget-object v0, p0, Lek/d;->c:Lfk/i;

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lek/d;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lek/d;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lek/d;->b:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lek/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lek/d;

    invoke-virtual {p0}, Lek/d;->a()Lfk/e;

    move-result-object v0

    invoke-virtual {p1}, Lek/d;->a()Lfk/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfk/e;->j(Lfk/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lek/d;->b()Lfk/i;

    move-result-object v0

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfk/i;->e(Lfk/i;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lek/d;->a()Lfk/e;

    move-result-object v0

    invoke-virtual {v0}, Lfk/e;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lek/d;->b()Lfk/i;

    move-result-object v1

    invoke-virtual {v1}, Lfk/i;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
