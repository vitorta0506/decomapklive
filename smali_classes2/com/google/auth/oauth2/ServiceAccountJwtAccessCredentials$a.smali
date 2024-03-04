.class Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->createCache()Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Lcom/google/auth/oauth2/JwtClaims;",
        "Lcom/google/auth/oauth2/JwtCredentials;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;->a:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/google/auth/oauth2/JwtClaims;

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;->c(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/JwtCredentials;->newBuilder()Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;->a:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    .line 2
    invoke-static {v1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$100(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtCredentials$b;->j(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;->a:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    .line 3
    invoke-static {v1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$000(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtCredentials$b;->k(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->h(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    sget-wide v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->LIFE_SPAN_SECS:J

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->i(Ljava/lang/Long;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;->a:Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    iget-object v0, v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clock:Lcom/google/api/client/util/i;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->g(Lcom/google/api/client/util/i;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->a()Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    return-object p1
.end method
