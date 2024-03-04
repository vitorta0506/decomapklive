.class Lcom/google/auth/oauth2/IdentityPoolCredentials$b;
.super Lcom/google/auth/oauth2/ExternalAccountCredentials$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/IdentityPoolCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;,
        Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;
    }
.end annotation


# instance fields
.field private a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

.field private b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
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
.method constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$c;-><init>(Ljava/util/Map;)V

    const-string v0, "file"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "url"

    if-eqz v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one credential source type can be set, either file or url."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->c:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    iput-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->c:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    iput-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    :goto_1
    const-string v0, "headers"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->e:Ljava/util/Map;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    :cond_3
    sget-object v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    iput-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    const-string v1, "format"

    .line 15
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_7

    const-string v1, "type"

    .line 16
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 18
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "json"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "subject_token_field_name"

    .line 19
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    sget-object v1, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    iput-object v1, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    .line 21
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->d:Ljava/lang/String;

    goto :goto_2

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "When specifying a JSON credential type, the subject_token_field_name must be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v1, :cond_6

    .line 23
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    iput-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    goto :goto_2

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Invalid credential source format type: %s."

    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing credential source file location or URL. At least one must be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    return-object p0
.end method

.method static synthetic b(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->b:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    return-object p0
.end method

.method static synthetic d(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->e:Ljava/util/Map;

    return-object p0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
