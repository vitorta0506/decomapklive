.class Lic/g$a;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:I

.field final synthetic c:Lic/g;


# direct methods
.method constructor <init>(Lic/g;Lokio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lic/g$a;->c:Lic/g;

    .line 2
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lic/g$a;->a:J

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
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 2
    iget-object p3, p0, Lic/g$a;->c:Lic/g;

    invoke-static {p3}, Lic/g;->a(Lic/g;)Lokhttp3/ResponseBody;

    move-result-object p3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-nez p3, :cond_0

    .line 3
    iput-wide v0, p0, Lic/g$a;->a:J

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v2, p0, Lic/g$a;->a:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lic/g$a;->a:J

    :goto_0
    const/high16 p3, 0x42c80000    # 100.0f

    .line 5
    iget-wide v2, p0, Lic/g$a;->a:J

    long-to-float v2, v2

    mul-float v2, v2, p3

    long-to-float p3, v0

    div-float/2addr v2, p3

    float-to-int p3, v2

    .line 6
    iget-object v2, p0, Lic/g$a;->c:Lic/g;

    invoke-static {v2}, Lic/g;->b(Lic/g;)Lic/f;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, p0, Lic/g$a;->b:I

    if-eq p3, v2, :cond_1

    .line 7
    iget-object v2, p0, Lic/g$a;->c:Lic/g;

    invoke-static {v2}, Lic/g;->b(Lic/g;)Lic/f;

    move-result-object v2

    invoke-interface {v2, p3}, Lic/f;->onProgress(I)V

    .line 8
    :cond_1
    iget-object v2, p0, Lic/g$a;->c:Lic/g;

    invoke-static {v2}, Lic/g;->b(Lic/g;)Lic/f;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lic/g$a;->a:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    .line 9
    iget-object v0, p0, Lic/g$a;->c:Lic/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lic/g;->c(Lic/g;Lic/f;)Lic/f;

    .line 10
    :cond_2
    iput p3, p0, Lic/g$a;->b:I

    return-wide p1
.end method
