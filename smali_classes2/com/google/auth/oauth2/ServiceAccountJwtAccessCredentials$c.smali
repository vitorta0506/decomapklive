.class public Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/security/PrivateKey;

.field private d:Ljava/lang/String;

.field private e:Ljava/net/URI;

.field private f:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$200(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$300(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$100(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->c:Ljava/security/PrivateKey;

    .line 5
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$000(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$400(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->e:Ljava/net/URI;

    .line 7
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->access$500(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 9

    new-instance v8, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->c:Ljava/security/PrivateKey;

    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->e:Ljava/net/URI;

    iget-object v6, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->f:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;)V

    return-object v8
.end method

.method public b(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->c:Ljava/security/PrivateKey;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->f:Ljava/lang/String;

    return-object p0
.end method
