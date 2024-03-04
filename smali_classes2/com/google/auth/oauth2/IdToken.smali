.class public Lcom/google/auth/oauth2/IdToken;
.super Lcom/google/auth/oauth2/AccessToken;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7628a7af0c27ddc9L


# instance fields
.field private transient jsonWebSignature:Li5/a;


# direct methods
.method private constructor <init>(Ljava/lang/String;Li5/a;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Li5/b;->b()Li5/b$b;

    move-result-object v1

    invoke-virtual {v1}, Li5/b$b;->k()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 2
    iput-object p2, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/google/auth/oauth2/IdToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-static {p0, v0}, Lcom/google/auth/oauth2/IdToken;->create(Ljava/lang/String;Lg5/c;)Lcom/google/auth/oauth2/IdToken;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lg5/c;)Lcom/google/auth/oauth2/IdToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/auth/oauth2/IdToken;

    invoke-static {p1, p0}, Li5/a;->d(Lg5/c;Ljava/lang/String;)Li5/a;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/auth/oauth2/IdToken;-><init>(Ljava/lang/String;Li5/a;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-static {v0, p1}, Li5/a;->d(Lg5/c;Ljava/lang/String;)Li5/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/IdToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/IdToken;

    .line 3
    invoke-super {p0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    .line 4
    invoke-virtual {v0}, Li5/a;->c()Li5/a$a;

    move-result-object v0

    iget-object v2, p1, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    invoke-virtual {v2}, Li5/a;->c()Li5/a$a;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    .line 5
    invoke-virtual {v0}, Li5/b;->b()Li5/b$b;

    move-result-object v0

    iget-object p1, p1, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    invoke-virtual {p1}, Li5/b;->b()Li5/b$b;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getJsonWebSignature()Li5/a;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    invoke-virtual {v1}, Li5/a;->c()Li5/a$a;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    invoke-virtual {v1}, Li5/b;->b()Li5/b$b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 2
    invoke-super {p0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tokenValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/IdToken;->jsonWebSignature:Li5/a;

    const-string v2, "JsonWebSignature"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
