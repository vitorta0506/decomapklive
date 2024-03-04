.class public Li7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Lokhttp3/ResponseBody;",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
        "Ljava/io/File;",
        ">;>;",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Li7/b;->b:Z

    .line 3
    new-instance v0, Li7/b$a;

    invoke-direct {v0, p0}, Li7/b$a;-><init>(Li7/b;)V

    iput-object v0, p0, Li7/b;->f:Lvh/g;

    .line 4
    new-instance v0, Li7/b$b;

    invoke-direct {v0, p0}, Li7/b$b;-><init>(Li7/b;)V

    iput-object v0, p0, Li7/b;->h:Lvh/g;

    .line 5
    iput-object p1, p0, Li7/b;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Li7/b;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 7
    instance-of p1, p2, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz p1, :cond_0

    .line 8
    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    iput-object p2, p0, Li7/b;->d:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    :cond_0
    return-void
.end method

.method static synthetic a(Li7/b;)J
    .locals 2

    iget-wide v0, p0, Li7/b;->e:J

    return-wide v0
.end method

.method static synthetic b(Li7/b;)Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .locals 0

    iget-object p0, p0, Li7/b;->d:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    return-object p0
.end method

.method private d(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    const/4 p4, 0x1

    .line 5
    invoke-virtual {p2, p4}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    const/4 p4, 0x0

    const/4 v0, -0x1

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p4, 0x400

    :try_start_1
    new-array p4, p4, [B

    const-wide/16 v2, 0x0

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1, p4}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v0, :cond_3

    .line 8
    iget-boolean v5, p0, Li7/b;->b:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 9
    invoke-virtual {v1, p4, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 10
    iget-object v4, p0, Li7/b;->d:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz v4, :cond_1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Li7/b;->g:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Li7/b;->g:J

    .line 13
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v4

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v4

    iget-object v5, p0, Li7/b;->h:Lvh/g;

    iget-object v6, p0, Li7/b;->f:Lvh/g;

    .line 14
    invoke-virtual {v4, v5, v6}, Lio/reactivex/k;->subscribe(Lvh/g;Lvh/g;)Lth/b;

    goto :goto_0

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 17
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :goto_2
    iget-boolean p1, p0, Li7/b;->b:Z

    if-eqz p1, :cond_5

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object p4, v1

    goto :goto_6

    :catch_1
    move-object p4, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_6

    .line 21
    :catch_2
    :goto_3
    :try_start_3
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p4, :cond_4

    .line 22
    :try_start_4
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    :cond_4
    :goto_4
    iget-boolean p1, p0, Li7/b;->b:Z

    if-eqz p1, :cond_5

    .line 25
    :goto_5
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    :cond_5
    return-object p2

    :goto_6
    if-eqz p4, :cond_6

    .line 26
    :try_start_5
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception p3

    .line 27
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :cond_6
    :goto_7
    iget-boolean p3, p0, Li7/b;->b:Z

    if-eqz p3, :cond_7

    .line 29
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 30
    :cond_7
    throw p1
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Li7/b;->c(Lokhttp3/ResponseBody;)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public c(Lokhttp3/ResponseBody;)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Li7/b;->e:J

    .line 2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v0, p0, Li7/b;->a:Ljava/lang/String;

    iget-wide v1, p0, Li7/b;->e:J

    invoke-direct {p0, p1, v0, v1, v2}, Li7/b;->d(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li7/b;->b:Z

    return-void
.end method
