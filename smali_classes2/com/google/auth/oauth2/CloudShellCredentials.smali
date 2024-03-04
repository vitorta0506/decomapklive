.class public Lcom/google/auth/oauth2/CloudShellCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/CloudShellCredentials$b;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_INDEX:I = 0x2

.field protected static final GET_AUTH_TOKEN_REQUEST:Ljava/lang/String; = "2\n[]"

.field protected static final GET_AUTH_TOKEN_REQUEST_BYTES:[B

.field private static final READ_TIMEOUT_MS:I = 0x1388

.field private static final serialVersionUID:J = -0x1d9ada3aa6f69943L


# instance fields
.field private final authPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/base/e;->c:Ljava/nio/charset/Charset;

    const-string v1, "2\n[]\n"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/CloudShellCredentials;->GET_AUTH_TOKEN_REQUEST_BYTES:[B

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/auth/oauth2/CloudShellCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/CloudShellCredentials;-><init>(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/auth/oauth2/CloudShellCredentials;)I
    .locals 0

    iget p0, p0, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    return p0
.end method

.method public static create(I)Lcom/google/auth/oauth2/CloudShellCredentials;
    .locals 1

    invoke-static {}, Lcom/google/auth/oauth2/CloudShellCredentials;->newBuilder()Lcom/google/auth/oauth2/CloudShellCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/CloudShellCredentials$b;->g(I)Lcom/google/auth/oauth2/CloudShellCredentials$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/auth/oauth2/CloudShellCredentials$b;->f()Lcom/google/auth/oauth2/CloudShellCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/CloudShellCredentials$b;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/CloudShellCredentials$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/CloudShellCredentials$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/CloudShellCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/CloudShellCredentials;

    .line 3
    iget v0, p0, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    iget p1, p1, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected getAuthPort()I
    .locals 1

    iget v0, p0, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/google/auth/oauth2/CloudShellCredentials;->getAuthPort()I

    move-result v1

    const-string v2, "localhost"

    invoke-direct {v0, v2, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x1388

    .line 2
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/google/auth/oauth2/CloudShellCredentials;->GET_AUTH_TOKEN_REQUEST_BYTES:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 7
    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v2, v1}, Lg5/c;->d(Ljava/io/Reader;)Lg5/f;

    move-result-object v1

    .line 8
    const-class v2, Ljava/util/ArrayList;

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lg5/f;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    .line 9
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/google/auth/oauth2/AccessToken;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 12
    throw v1
.end method

.method public toBuilder()Lcom/google/auth/oauth2/CloudShellCredentials$b;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/auth/oauth2/CloudShellCredentials$b;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/CloudShellCredentials$b;-><init>(Lcom/google/auth/oauth2/CloudShellCredentials;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/CloudShellCredentials;->toBuilder()Lcom/google/auth/oauth2/CloudShellCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/CloudShellCredentials;->toBuilder()Lcom/google/auth/oauth2/CloudShellCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Lcom/google/auth/oauth2/CloudShellCredentials;->authPort:I

    const-string v2, "authPort"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
