.class public Lab/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lab/a;->i:J

    return-wide v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lab/a;->e:F

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lab/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lab/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lab/a;->d:F

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lab/a;->h:J

    return-wide v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lab/a;->b:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lab/a;->c:F

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lab/a;->a:I

    return v0
.end method

.method public j(J)V
    .locals 0

    iput-wide p1, p0, Lab/a;->i:J

    return-void
.end method

.method public k(F)V
    .locals 0

    iput p1, p0, Lab/a;->e:F

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lab/a;->g:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lab/a;->f:Ljava/lang/String;

    return-void
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, Lab/a;->d:F

    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lab/a;->h:J

    return-void
.end method

.method public p(F)V
    .locals 0

    iput p1, p0, Lab/a;->b:F

    return-void
.end method

.method public q(F)V
    .locals 0

    iput p1, p0, Lab/a;->c:F

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lab/a;->a:I

    return-void
.end method
