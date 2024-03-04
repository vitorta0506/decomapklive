.class public Lcom/guochao/faceshow/aaspring/base/http/request/a;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field a:Lokhttp3/MediaType;

.field b:Ljava/lang/String;

.field c:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->a:Lokhttp3/MediaType;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->b:Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->c:Lokhttp3/RequestBody;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->c:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->c:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/a;->c:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    return-void
.end method
