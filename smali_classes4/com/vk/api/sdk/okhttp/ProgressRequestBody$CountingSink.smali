.class final Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/okhttp/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CountingSink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;",
        "Lokio/ForwardingSink;",
        "delegate",
        "Lokio/Sink;",
        "(Lcom/vk/api/sdk/okhttp/ProgressRequestBody;Lokio/Sink;)V",
        "bytesWritten",
        "",
        "contentLength",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bytesWritten:J

.field private contentLength:J

.field final synthetic this$0:Lcom/vk/api/sdk/okhttp/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/okhttp/ProgressRequestBody;Lokio/Sink;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/okhttp/ProgressRequestBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->this$0:Lcom/vk/api/sdk/okhttp/ProgressRequestBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->contentLength:J

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 2
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    iget-wide v0, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 3
    iget-wide p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->contentLength:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->this$0:Lcom/vk/api/sdk/okhttp/ProgressRequestBody;

    invoke-virtual {p1}, Lcom/vk/api/sdk/okhttp/ProgressRequestBody;->contentLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->contentLength:J

    .line 5
    :cond_0
    iget-wide p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long p3, p1, v0

    if-gez p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->this$0:Lcom/vk/api/sdk/okhttp/ProgressRequestBody;

    const-wide/16 p2, 0x1

    invoke-static {p1, v0, v1, p2, p3}, Lcom/vk/api/sdk/okhttp/ProgressRequestBody;->access$notifyProgressSend(Lcom/vk/api/sdk/okhttp/ProgressRequestBody;JJ)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->this$0:Lcom/vk/api/sdk/okhttp/ProgressRequestBody;

    iget-wide v0, p0, Lcom/vk/api/sdk/okhttp/ProgressRequestBody$CountingSink;->bytesWritten:J

    invoke-static {p3, v0, v1, p1, p2}, Lcom/vk/api/sdk/okhttp/ProgressRequestBody;->access$notifyProgressSend(Lcom/vk/api/sdk/okhttp/ProgressRequestBody;JJ)V

    :goto_0
    return-void
.end method
