.class public Lmj/c;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/d;


# static fields
.field private static f:Lmj/d;


# instance fields
.field private a:Z

.field private b:I

.field private c:Lmj/d;

.field private d:[Lmj/b;

.field private e:Lorg/bouncycastle/asn1/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnj/b;->O:Lmj/d;

    sput-object v0, Lmj/c;->f:Lmj/d;

    return-void
.end method

.method public constructor <init>(Lmj/d;Lmj/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lmj/c;->c:Lmj/d;

    iget-object p1, p2, Lmj/c;->d:[Lmj/b;

    iput-object p1, p0, Lmj/c;->d:[Lmj/b;

    iget-object p1, p2, Lmj/c;->e:Lorg/bouncycastle/asn1/a1;

    iput-object p1, p0, Lmj/c;->e:Lorg/bouncycastle/asn1/a1;

    return-void
.end method

.method private constructor <init>(Lmj/d;Lorg/bouncycastle/asn1/s;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lmj/c;->c:Lmj/d;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/s;->size()I

    move-result p1

    new-array p1, p1, [Lmj/b;

    iput-object p1, p0, Lmj/c;->d:[Lmj/b;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmj/b;->y(Ljava/lang/Object;)Lmj/b;

    move-result-object v5

    if-ne v5, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v2, v4

    iget-object v4, p0, Lmj/c;->d:[Lmj/b;

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v4, v3

    move v3, v6

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/asn1/a1;->P(Lorg/bouncycastle/asn1/s;)Lorg/bouncycastle/asn1/a1;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/a1;

    iget-object p2, p0, Lmj/c;->d:[Lmj/b;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/a1;-><init>([Lorg/bouncycastle/asn1/e;)V

    :goto_2
    iput-object p1, p0, Lmj/c;->e:Lorg/bouncycastle/asn1/a1;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    sget-object v0, Lmj/c;->f:Lmj/d;

    invoke-direct {p0, v0, p1}, Lmj/c;-><init>(Lmj/d;Lorg/bouncycastle/asn1/s;)V

    return-void
.end method

.method public static x(Ljava/lang/Object;)Lmj/c;
    .locals 1

    instance-of v0, p0, Lmj/c;

    if-eqz v0, :cond_0

    check-cast p0, Lmj/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmj/c;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lmj/c;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Lmj/d;Ljava/lang/Object;)Lmj/c;
    .locals 1

    instance-of v0, p1, Lmj/c;

    if-eqz v0, :cond_0

    new-instance v0, Lmj/c;

    check-cast p1, Lmj/c;

    invoke-direct {v0, p0, p1}, Lmj/c;-><init>(Lmj/d;Lmj/c;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lmj/c;

    invoke-static {p1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lmj/c;-><init>(Lmj/d;Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Lorg/bouncycastle/asn1/y;Z)Lmj/c;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/s;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-static {p0}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B()[Lmj/b;
    .locals 1

    iget-object v0, p0, Lmj/c;->d:[Lmj/b;

    invoke-virtual {v0}, [Lmj/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmj/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmj/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/asn1/s;

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/e;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-virtual {p0}, Lmj/c;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lmj/c;->c:Lmj/d;

    new-instance v1, Lmj/c;

    check-cast p1, Lorg/bouncycastle/asn1/e;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p1

    invoke-direct {v1, p1}, Lmj/c;-><init>(Lorg/bouncycastle/asn1/s;)V

    invoke-interface {v0, p0, v1}, Lmj/d;->c(Lmj/c;Lmj/c;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v2
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lmj/c;->e:Lorg/bouncycastle/asn1/a1;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lmj/c;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmj/c;->b:I

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmj/c;->a:Z

    iget-object v0, p0, Lmj/c;->c:Lmj/d;

    invoke-interface {v0, p0}, Lmj/d;->a(Lmj/c;)I

    move-result v0

    iput v0, p0, Lmj/c;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmj/c;->c:Lmj/d;

    invoke-interface {v0, p0}, Lmj/d;->b(Lmj/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
