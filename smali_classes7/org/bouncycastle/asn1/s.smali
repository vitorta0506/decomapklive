.class public abstract Lorg/bouncycastle/asn1/s;
.super Lorg/bouncycastle/asn1/r;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/asn1/r;",
        "Ljava/lang/Iterable;"
    }
.end annotation


# instance fields
.field a:[Lorg/bouncycastle/asn1/e;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/f;->d:[Lorg/bouncycastle/asn1/e;

    iput-object v0, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/e;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    const-string v0, "\'element\' cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/e;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/f;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    const-string v0, "\'elementVector\' cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/f;->g()[Lorg/bouncycastle/asn1/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    return-void
.end method

.method protected constructor <init>([Lorg/bouncycastle/asn1/e;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->A([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/f;->b([Lorg/bouncycastle/asn1/e;)[Lorg/bouncycastle/asn1/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'elements\' cannot be null, or contain null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/e;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/f;->b([Lorg/bouncycastle/asn1/e;)[Lorg/bouncycastle/asn1/e;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    return-void
.end method

.method public static K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/s;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/t;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/t;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/e;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/e;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/s;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/s;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/s;

    return-object p0
.end method

.method public static L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/y;->O()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/y;->M()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/y;->M()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/y;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p0, p0, Lorg/bouncycastle/asn1/j0;

    if-eqz p0, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/f0;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/f0;-><init>(Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/n1;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/n1;-><init>(Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/asn1/s;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/bouncycastle/asn1/s;

    instance-of p0, p0, Lorg/bouncycastle/asn1/j0;

    if-eqz p0, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->J()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/s;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method I()Lorg/bouncycastle/asn1/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/a1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/a1;-><init>([Lorg/bouncycastle/asn1/e;Z)V

    return-object v0
.end method

.method J()Lorg/bouncycastle/asn1/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/n1;

    iget-object v1, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/n1;-><init>([Lorg/bouncycastle/asn1/e;Z)V

    return-object v0
.end method

.method public M(I)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public N()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/s$a;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/s$a;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0
.end method

.method O()[Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    mul-int/lit16 v1, v1, 0x101

    iget-object v2, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/r;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/asn1/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/util/a$a;

    iget-object v1, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/a$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method x(Lorg/bouncycastle/asn1/r;)Z
    .locals 5

    instance-of v0, p1, Lorg/bouncycastle/asn1/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/s;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v3

    iget-object v4, p1, Lorg/bouncycastle/asn1/s;->a:[Lorg/bouncycastle/asn1/e;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/r;->x(Lorg/bouncycastle/asn1/r;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
