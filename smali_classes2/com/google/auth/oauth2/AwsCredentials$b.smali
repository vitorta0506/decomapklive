.class Lcom/google/auth/oauth2/AwsCredentials$b;
.super Lcom/google/auth/oauth2/ExternalAccountCredentials$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/AwsCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 3
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

    const-string v0, "regional_cred_verification_url"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "environment_id"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "(aws)([\\d]+)"

    .line 4
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "region_url"

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->a:Ljava/lang/String;

    const-string v1, "url"

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->b:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->c:Ljava/lang/String;

    const-string v0, "imdsv2_session_token_url"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->d:Ljava/lang/String;

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "AWS version %s is not supported in the current build."

    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid AWS environment ID."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A regional_cred_verification_url representing the GetCallerIdentity action URL must be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/AwsCredentials$b;->b:Ljava/lang/String;

    return-object p0
.end method
