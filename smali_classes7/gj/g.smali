.class public Lgj/g;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# static fields
.field public static final e:Loj/a;

.field public static final f:Loj/a;

.field public static final g:Lorg/bouncycastle/asn1/k;

.field public static final h:Lorg/bouncycastle/asn1/k;


# instance fields
.field private a:Loj/a;

.field private b:Loj/a;

.field private c:Lorg/bouncycastle/asn1/k;

.field private d:Lorg/bouncycastle/asn1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loj/a;

    sget-object v1, Lfj/b;->i:Lorg/bouncycastle/asn1/n;

    sget-object v2, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    sput-object v0, Lgj/g;->e:Loj/a;

    new-instance v1, Loj/a;

    sget-object v2, Lgj/c;->s0:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2, v0}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    sput-object v1, Lgj/g;->f:Loj/a;

    new-instance v0, Lorg/bouncycastle/asn1/k;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    sput-object v0, Lgj/g;->g:Lorg/bouncycastle/asn1/k;

    new-instance v0, Lorg/bouncycastle/asn1/k;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    sput-object v0, Lgj/g;->h:Lorg/bouncycastle/asn1/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    sget-object v0, Lgj/g;->e:Loj/a;

    iput-object v0, p0, Lgj/g;->a:Loj/a;

    sget-object v0, Lgj/g;->f:Loj/a;

    iput-object v0, p0, Lgj/g;->b:Loj/a;

    sget-object v0, Lgj/g;->g:Lorg/bouncycastle/asn1/k;

    iput-object v0, p0, Lgj/g;->c:Lorg/bouncycastle/asn1/k;

    sget-object v0, Lgj/g;->h:Lorg/bouncycastle/asn1/k;

    iput-object v0, p0, Lgj/g;->d:Lorg/bouncycastle/asn1/k;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    sget-object v0, Lgj/g;->e:Loj/a;

    iput-object v0, p0, Lgj/g;->a:Loj/a;

    sget-object v0, Lgj/g;->f:Loj/a;

    iput-object v0, p0, Lgj/g;->b:Loj/a;

    sget-object v0, Lgj/g;->g:Lorg/bouncycastle/asn1/k;

    iput-object v0, p0, Lgj/g;->c:Lorg/bouncycastle/asn1/k;

    sget-object v0, Lgj/g;->h:Lorg/bouncycastle/asn1/k;

    iput-object v0, p0, Lgj/g;->d:Lorg/bouncycastle/asn1/k;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/k;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Lgj/g;->d:Lorg/bouncycastle/asn1/k;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/k;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Lgj/g;->c:Lorg/bouncycastle/asn1/k;

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Loj/a;->z(Lorg/bouncycastle/asn1/y;Z)Loj/a;

    move-result-object v1

    iput-object v1, p0, Lgj/g;->b:Loj/a;

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Loj/a;->z(Lorg/bouncycastle/asn1/y;Z)Loj/a;

    move-result-object v1

    iput-object v1, p0, Lgj/g;->a:Loj/a;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lgj/g;
    .locals 1

    instance-of v0, p0, Lgj/g;

    if-eqz v0, :cond_0

    check-cast p0, Lgj/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgj/g;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lgj/g;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lgj/g;->a:Loj/a;

    sget-object v2, Lgj/g;->e:Loj/a;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    const/4 v3, 0x0

    iget-object v4, p0, Lgj/g;->a:Loj/a;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Lgj/g;->b:Loj/a;

    sget-object v3, Lgj/g;->f:Loj/a;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    iget-object v3, p0, Lgj/g;->b:Loj/a;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v1, p0, Lgj/g;->c:Lorg/bouncycastle/asn1/k;

    sget-object v3, Lgj/g;->g:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    const/4 v3, 0x2

    iget-object v4, p0, Lgj/g;->c:Lorg/bouncycastle/asn1/k;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_2
    iget-object v1, p0, Lgj/g;->d:Lorg/bouncycastle/asn1/k;

    sget-object v3, Lgj/g;->h:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    const/4 v3, 0x3

    iget-object v4, p0, Lgj/g;->d:Lorg/bouncycastle/asn1/k;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Loj/a;
    .locals 1

    iget-object v0, p0, Lgj/g;->a:Loj/a;

    return-object v0
.end method
