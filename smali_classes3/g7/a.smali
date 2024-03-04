.class public Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Throwable;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lg7/a;->a:Ljava/lang/Throwable;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lg7/a;->b:I

    .line 4
    iput-object v1, p0, Lg7/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lg7/a;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lg7/a;->a:Ljava/lang/Throwable;

    .line 8
    :goto_0
    iput p2, p0, Lg7/a;->b:I

    .line 9
    iget-object p1, p0, Lg7/a;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg7/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static e(Ljava/lang/Throwable;)Lg7/a;
    .locals 3

    .line 1
    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lretrofit2/HttpException;

    .line 3
    new-instance v0, Lg7/a;

    invoke-virtual {p0}, Lretrofit2/HttpException;->code()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p0, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/json/JSONException;

    if-nez v0, :cond_9

    instance-of v0, p0, Lcom/google/gson/JsonSyntaxException;

    if-nez v0, :cond_9

    instance-of v0, p0, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-nez v0, :cond_9

    instance-of v0, p0, Landroid/net/ParseException;

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lg7/a;

    const/16 v1, 0x3ef

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "ClassCastExeption"

    .line 8
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_2
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lg7/a;

    const/16 v1, 0x3ea

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Connect failed"

    .line 11
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_3
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Lg7/a;

    const/16 v1, 0x3ec

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "SSL verify failed"

    .line 14
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 15
    :cond_4
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v1, "Connect time out"

    const/16 v2, 0x3ed

    if-eqz v0, :cond_5

    .line 16
    new-instance v0, Lg7/a;

    invoke-direct {v0, p0, v2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    .line 17
    iput-object v1, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 18
    :cond_5
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_6

    .line 19
    new-instance v0, Lg7/a;

    invoke-direct {v0, p0, v2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    .line 20
    iput-object v1, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 21
    :cond_6
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_7

    .line 22
    new-instance v0, Lg7/a;

    const/16 v1, 0x3f1

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "dns failed"

    .line 23
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 24
    :cond_7
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_8

    .line 25
    new-instance v0, Lg7/a;

    const/16 v1, 0x3f2

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "NullPointerException"

    .line 26
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 27
    :cond_8
    new-instance v0, Lg7/a;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Unknown error"

    .line 28
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0

    .line 29
    :cond_9
    :goto_0
    new-instance v0, Lg7/a;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    const-string p0, "Parse json failed"

    .line 30
    iput-object p0, v0, Lg7/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lg7/a;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg7/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg7/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lg7/a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiException{mThrowable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg7/a;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg7/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg7/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg7/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg7/a;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
