.class final Ll5/a;
.super Ll5/i;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/auth/Credentials;


# direct methods
.method constructor <init>(Lcom/google/auth/Credentials;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll5/i;-><init>()V

    .line 2
    iput-object p1, p0, Ll5/a;->a:Lcom/google/auth/Credentials;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/Credentials;
    .locals 1

    iget-object v0, p0, Ll5/a;->a:Lcom/google/auth/Credentials;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ll5/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Ll5/i;

    .line 3
    iget-object v1, p0, Ll5/a;->a:Lcom/google/auth/Credentials;

    invoke-virtual {p1}, Ll5/i;->a()Lcom/google/auth/Credentials;

    move-result-object p1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ll5/a;->a:Lcom/google/auth/Credentials;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedCredentialsProvider{credentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll5/a;->a:Lcom/google/auth/Credentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
