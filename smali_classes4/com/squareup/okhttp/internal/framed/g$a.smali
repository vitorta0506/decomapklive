.class Lcom/squareup/okhttp/internal/framed/g$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/g;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/framed/g;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/framed/g;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/g$a;->a:Lcom/squareup/okhttp/internal/framed/g;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$a;->a:Lcom/squareup/okhttp/internal/framed/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/g;->a(Lcom/squareup/okhttp/internal/framed/g;)I

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/g$a;->a:Lcom/squareup/okhttp/internal/framed/g;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/g;->a(Lcom/squareup/okhttp/internal/framed/g;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    return-wide v1

    .line 3
    :cond_1
    iget-object p3, p0, Lcom/squareup/okhttp/internal/framed/g$a;->a:Lcom/squareup/okhttp/internal/framed/g;

    invoke-static {p3, p1, p2}, Lcom/squareup/okhttp/internal/framed/g;->b(Lcom/squareup/okhttp/internal/framed/g;J)I

    return-wide p1
.end method
