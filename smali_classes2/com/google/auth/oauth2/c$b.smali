.class final Lcom/google/auth/oauth2/c$b;
.super Lcom/google/auth/oauth2/JwtClaims$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/auth/oauth2/JwtClaims$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/JwtClaims;
    .locals 7

    .line 1
    iget-object v4, p0, Lcom/google/auth/oauth2/c$b;->d:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 2
    new-instance v6, Lcom/google/auth/oauth2/c;

    iget-object v1, p0, Lcom/google/auth/oauth2/c$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auth/oauth2/c$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/auth/oauth2/c$b;->c:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/auth/oauth2/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/google/auth/oauth2/c$a;)V

    return-object v6

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " additionalClaims"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/util/Map;)Lcom/google/auth/oauth2/JwtClaims$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/JwtClaims$a;"
        }
    .end annotation

    const-string v0, "Null additionalClaims"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/auth/oauth2/c$b;->d:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/c$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/c$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/c$b;->c:Ljava/lang/String;

    return-object p0
.end method
