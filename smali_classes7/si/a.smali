.class public Lsi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/d;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Lorg/apache/http/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    .line 2
    invoke-static {p1, v0}, Lvi/a;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lsi/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lsi/a;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 4
    iput-object p3, p0, Lsi/a;->c:[Lorg/apache/http/k;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lorg/apache/http/k;

    .line 5
    iput-object p1, p0, Lsi/a;->c:[Lorg/apache/http/k;

    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/http/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lsi/a;

    .line 3
    iget-object v1, p0, Lsi/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lsi/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsi/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lsi/a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lvi/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsi/a;->c:[Lorg/apache/http/k;

    iget-object p1, p1, Lsi/a;->c:[Lorg/apache/http/k;

    invoke-static {v1, p1}, Lvi/e;->b([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsi/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Lorg/apache/http/k;
    .locals 1

    iget-object v0, p0, Lsi/a;->c:[Lorg/apache/http/k;

    invoke-virtual {v0}, [Lorg/apache/http/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/k;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsi/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lsi/a;->a:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lvi/e;->d(ILjava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lsi/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lvi/e;->d(ILjava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lsi/a;->c:[Lorg/apache/http/k;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    invoke-static {v0, v4}, Lvi/e;->d(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lsi/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lsi/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lsi/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    iget-object v1, p0, Lsi/a;->c:[Lorg/apache/http/k;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "; "

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
