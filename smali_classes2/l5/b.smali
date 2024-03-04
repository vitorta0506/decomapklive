.class final Ll5/b;
.super Ll5/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/auth/oauth2/GoogleCredentials;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;ZLcom/google/auth/oauth2/GoogleCredentials;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/google/auth/oauth2/GoogleCredentials;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ll5/l;-><init>()V

    .line 3
    iput-object p1, p0, Ll5/b;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Ll5/b;->b:Ljava/util/List;

    .line 5
    iput-boolean p3, p0, Ll5/b;->c:Z

    .line 6
    iput-object p4, p0, Ll5/b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ZLcom/google/auth/oauth2/GoogleCredentials;Ll5/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Ll5/b;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/auth/oauth2/GoogleCredentials;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/b;->b:Ljava/util/List;

    return-object v0
.end method

.method c()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    iget-object v0, p0, Ll5/b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll5/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Ll5/b;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ll5/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Ll5/l;

    .line 3
    iget-object v1, p0, Ll5/b;->a:Ljava/util/List;

    invoke-virtual {p1}, Ll5/l;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll5/b;->b:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Ll5/l;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Ll5/b;->c:Z

    .line 5
    invoke-virtual {p1}, Ll5/l;->e()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ll5/b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Ll5/l;->c()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ll5/l;->c()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ll5/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Ll5/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-boolean v2, p0, Ll5/b;->c:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v1, p0, Ll5/b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoogleCredentialsProvider{scopesToApply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll5/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jwtEnabledScopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll5/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useJwtAccessWithScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ll5/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", OAuth2Credentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll5/b;->d:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
