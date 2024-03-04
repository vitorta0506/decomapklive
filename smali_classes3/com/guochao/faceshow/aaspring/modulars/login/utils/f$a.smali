.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->c:I

    return-void
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open connection failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dz[httpURLConnectionGet 300]"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->c(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method private static c(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->c:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "imgdata"

    .line 6
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 10
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 12
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "GET"

    .line 15
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 17
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 18
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 19
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 27
    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->c:I

    iput v3, v2, Landroid/os/Message;->what:I

    .line 28
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "code"

    .line 29
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_2

    const-string v1, "result"

    .line 30
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 34
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->c:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 35
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
