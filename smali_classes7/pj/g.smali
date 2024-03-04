.class public Lpj/g;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/d;


# instance fields
.field private a:Lorg/bouncycastle/asn1/r;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/l;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/n;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/r;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public constructor <init>(Lpj/i;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    invoke-virtual {p1}, Lpj/i;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    iput-object p1, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public static x(Ljava/lang/Object;)Lpj/g;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lpj/g;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/r;

    if-eqz v0, :cond_1

    new-instance v0, Lpj/g;

    check-cast p0, Lorg/bouncycastle/asn1/r;

    invoke-direct {v0, p0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/r;)V

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lpj/g;

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-direct {v0, p0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse encoded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Lpj/g;

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    instance-of v0, v0, Lorg/bouncycastle/asn1/n;

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method

.method public y()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lpj/g;->a:Lorg/bouncycastle/asn1/r;

    instance-of v0, v0, Lorg/bouncycastle/asn1/l;

    return v0
.end method
