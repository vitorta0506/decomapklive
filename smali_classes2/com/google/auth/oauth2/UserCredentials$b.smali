.class public Lcom/google/auth/oauth2/UserCredentials$b;
.super Lcom/google/auth/oauth2/GoogleCredentials$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/UserCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/net/URI;

.field private h:Ls5/b;

.field private i:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/UserCredentials;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/auth/oauth2/UserCredentials;->access$000(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/UserCredentials$b;->d:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/UserCredentials;->access$100(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/UserCredentials$b;->e:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/auth/oauth2/UserCredentials;->access$200(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/UserCredentials$b;->f:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/auth/oauth2/UserCredentials;->access$300(Lcom/google/auth/oauth2/UserCredentials;)Ls5/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/UserCredentials$b;->h:Ls5/b;

    .line 7
    invoke-static {p1}, Lcom/google/auth/oauth2/UserCredentials;->access$400(Lcom/google/auth/oauth2/UserCredentials;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/UserCredentials$b;->g:Ljava/net/URI;

    .line 8
    invoke-static {p1}, Lcom/google/auth/oauth2/UserCredentials;->access$500(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/auth/oauth2/OAuth2Credentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/UserCredentials$b;->f()Lcom/google/auth/oauth2/UserCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/UserCredentials$b;->g(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/UserCredentials$b;->f()Lcom/google/auth/oauth2/UserCredentials;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/UserCredentials$b;->g(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object p1

    return-object p1
.end method

.method public f()Lcom/google/auth/oauth2/UserCredentials;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/auth/oauth2/UserCredentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/auth/oauth2/UserCredentials$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/auth/oauth2/UserCredentials$b;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials$d;->b()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v4

    iget-object v5, p0, Lcom/google/auth/oauth2/UserCredentials$b;->h:Ls5/b;

    iget-object v6, p0, Lcom/google/auth/oauth2/UserCredentials$b;->g:Ljava/net/URI;

    iget-object v7, p0, Lcom/google/auth/oauth2/UserCredentials$b;->i:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/auth/oauth2/UserCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/AccessToken;Ls5/b;Ljava/net/URI;Ljava/lang/String;Lcom/google/auth/oauth2/UserCredentials$a;)V

    return-object v9
.end method

.method public g(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials$a;->e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials$a;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ls5/b;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->h:Ls5/b;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/net/URI;)Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials$b;->g:Ljava/net/URI;

    return-object p0
.end method
