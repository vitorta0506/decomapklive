.class public Lpk/h;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Lorg/bouncycastle/asn1/k;

.field private b:Lorg/bouncycastle/asn1/n;

.field private c:Lorg/bouncycastle/asn1/k;

.field private d:[[B

.field private e:[[B

.field private f:[B


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/k;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    iput-object v0, p0, Lpk/h;->a:Lorg/bouncycastle/asn1/k;

    new-instance v0, Lorg/bouncycastle/asn1/k;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    iput-object v0, p0, Lpk/h;->c:Lorg/bouncycastle/asn1/k;

    invoke-static {p2}, Lwk/a;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lpk/h;->d:[[B

    invoke-static {p3}, Lwk/a;->c([[S)[[B

    move-result-object p1

    iput-object p1, p0, Lpk/h;->e:[[B

    invoke-static {p4}, Lwk/a;->a([S)[B

    move-result-object p1

    iput-object p1, p0, Lpk/h;->f:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Lpk/h;->a:Lorg/bouncycastle/asn1/k;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v1

    iput-object v1, p0, Lpk/h;->b:Lorg/bouncycastle/asn1/n;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Lpk/h;->c:Lorg/bouncycastle/asn1/k;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Lpk/h;->d:[[B

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lpk/h;->d:[[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/s;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    new-array v2, v2, [[B

    iput-object v2, p0, Lpk/h;->e:[[B

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lpk/h;->e:[[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/s;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    iput-object p1, p0, Lpk/h;->f:[B

    return-void
.end method

.method public static F(Ljava/lang/Object;)Lpk/h;
    .locals 1

    instance-of v0, p0, Lpk/h;

    if-eqz v0, :cond_0

    check-cast p0, Lpk/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpk/h;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpk/h;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget-object v0, p0, Lpk/h;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    iget-object v1, p0, Lpk/h;->a:Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lpk/h;->b:Lorg/bouncycastle/asn1/n;

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpk/h;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/f;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/f;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lpk/h;->d:[[B

    array-length v5, v4

    if-ge v3, v5, :cond_1

    new-instance v5, Lorg/bouncycastle/asn1/w0;

    aget-object v4, v4, v3

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/f;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/f;-><init>()V

    :goto_2
    iget-object v3, p0, Lpk/h;->e:[[B

    array-length v4, v3

    if-ge v2, v4, :cond_2

    new-instance v4, Lorg/bouncycastle/asn1/w0;

    aget-object v3, v3, v2

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/f;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/f;-><init>()V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    iget-object v3, p0, Lpk/h;->f:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()[[S
    .locals 1

    iget-object v0, p0, Lpk/h;->d:[[B

    invoke-static {v0}, Lwk/a;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public y()[S
    .locals 1

    iget-object v0, p0, Lpk/h;->f:[B

    invoke-static {v0}, Lwk/a;->b([B)[S

    move-result-object v0

    return-object v0
.end method

.method public z()[[S
    .locals 1

    iget-object v0, p0, Lpk/h;->e:[[B

    invoke-static {v0}, Lwk/a;->d([[B)[[S

    move-result-object v0

    return-object v0
.end method
