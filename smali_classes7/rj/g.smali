.class public Lrj/g;
.super Lrj/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrj/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lrj/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lrj/c;-><init>(Lrj/c;)V

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    invoke-virtual {p0}, Lrj/c;->p()V

    iget-wide v0, p0, Lrj/c;->e:J

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/g;->i(J[BI)V

    iget-wide v0, p0, Lrj/c;->f:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/g;->i(J[BI)V

    iget-wide v0, p0, Lrj/c;->g:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/g;->i(J[BI)V

    iget-wide v0, p0, Lrj/c;->h:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/g;->i(J[BI)V

    iget-wide v0, p0, Lrj/c;->i:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/g;->i(J[BI)V

    iget-wide v0, p0, Lrj/c;->j:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/g;->i(J[BI)V

    invoke-virtual {p0}, Lrj/g;->reset()V

    const/16 p1, 0x30

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/f;
    .locals 1

    new-instance v0, Lrj/g;

    invoke-direct {v0, p0}, Lrj/g;-><init>(Lrj/g;)V

    return-object v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public g(Lorg/bouncycastle/util/f;)V
    .locals 0

    check-cast p1, Lrj/g;

    invoke-super {p0, p1}, Lrj/c;->o(Lrj/c;)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-384"

    return-object v0
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lrj/c;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lrj/c;->e:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lrj/c;->f:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lrj/c;->g:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lrj/c;->h:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lrj/c;->i:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lrj/c;->j:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lrj/c;->k:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lrj/c;->l:J

    return-void
.end method
