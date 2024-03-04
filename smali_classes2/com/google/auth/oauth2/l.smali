.class Lcom/google/auth/oauth2/l;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/auth/oauth2/l;->a:Z

    .line 9
    iput v0, p0, Lcom/google/auth/oauth2/l;->b:I

    return-void
.end method

.method constructor <init>(ZILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-boolean p1, p0, Lcom/google/auth/oauth2/l;->a:Z

    .line 3
    iput p2, p0, Lcom/google/auth/oauth2/l;->b:I

    return-void
.end method

.method constructor <init>(ZILjava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 5
    iput-boolean p1, p0, Lcom/google/auth/oauth2/l;->a:Z

    .line 6
    iput p2, p0, Lcom/google/auth/oauth2/l;->b:I

    return-void
.end method

.method static a(Lcom/google/api/client/http/HttpResponseException;)Lcom/google/auth/oauth2/l;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/auth/oauth2/l;->b(Lcom/google/api/client/http/HttpResponseException;Ljava/lang/String;)Lcom/google/auth/oauth2/l;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/google/api/client/http/HttpResponseException;Ljava/lang/String;)Lcom/google/auth/oauth2/l;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v0

    .line 2
    sget-object v1, Lcom/google/auth/oauth2/n;->i:Ljava/util/Set;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponseException;->getAttemptCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/google/auth/oauth2/l;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/auth/oauth2/l;-><init>(ZILjava/lang/Throwable;)V

    return-object p1

    .line 6
    :cond_0
    new-instance v2, Lcom/google/auth/oauth2/l;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/google/auth/oauth2/l;-><init>(ZILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method
