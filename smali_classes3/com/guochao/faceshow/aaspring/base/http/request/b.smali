.class public Lcom/guochao/faceshow/aaspring/base/http/request/b;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/http/request/b$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/RequestBody;

.field private final b:Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/RequestBody;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->a:Lokhttp3/RequestBody;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    return-void
.end method

.method private a(Lokio/Sink;)Lokio/Sink;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/b;->contentLength()J

    move-result-wide v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->b:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;-><init>(Lokio/Sink;JLcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->a:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->a:Lokhttp3/RequestBody;

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

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->c:Lokio/BufferedSink;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/b;->a(Lokio/Sink;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->c:Lokio/BufferedSink;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->a:Lokhttp3/RequestBody;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->c:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b;->c:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
