.class public Lcom/google/auth/oauth2/JwtCredentials$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/JwtCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/security/PrivateKey;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/auth/oauth2/JwtClaims;

.field private d:Lcom/google/api/client/util/i;

.field private e:Ljava/lang/Long;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/api/client/util/i;->a:Lcom/google/api/client/util/i;

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->d:Lcom/google/api/client/util/i;

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/JwtCredentials;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/JwtCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/auth/oauth2/JwtCredentials;-><init>(Lcom/google/auth/oauth2/JwtCredentials$b;Lcom/google/auth/oauth2/JwtCredentials$a;)V

    return-object v0
.end method

.method b()Lcom/google/api/client/util/i;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->d:Lcom/google/api/client/util/i;

    return-object v0
.end method

.method public c()Lcom/google/auth/oauth2/JwtClaims;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->c:Lcom/google/auth/oauth2/JwtClaims;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->e:Ljava/lang/Long;

    return-object v0
.end method

.method public e()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->a:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method g(Lcom/google/api/client/util/i;)Lcom/google/auth/oauth2/JwtCredentials$b;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/util/i;

    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->d:Lcom/google/api/client/util/i;

    return-object p0
.end method

.method public h(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials$b;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/JwtClaims;

    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->c:Lcom/google/auth/oauth2/JwtClaims;

    return-object p0
.end method

.method public i(Ljava/lang/Long;)Lcom/google/auth/oauth2/JwtCredentials$b;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public j(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/JwtCredentials$b;
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;

    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->a:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials$b;->b:Ljava/lang/String;

    return-object p0
.end method
