.class final Lfh/a;
.super Lfh/g;
.source "SourceFile"


# instance fields
.field private final a:Ljava/net/InetAddress;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfh/g;-><init>()V

    const-string v0, "Null addressPrefix"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lfh/a;->a:Ljava/net/InetAddress;

    .line 4
    iput p2, p0, Lfh/a;->b:I

    return-void
.end method


# virtual methods
.method a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lfh/a;->a:Ljava/net/InetAddress;

    return-object v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lfh/a;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lfh/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lfh/g;

    .line 3
    iget-object v1, p0, Lfh/a;->a:Ljava/net/InetAddress;

    invoke-virtual {p1}, Lfh/g;->a()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lfh/a;->b:I

    .line 4
    invoke-virtual {p1}, Lfh/g;->c()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfh/a;->a:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v1, p0, Lfh/a;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CidrMatcher{addressPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfh/a;->a:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefixLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfh/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
