.class final Lcom/tencent/rtmp/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/a/a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/rtmp/a/a$a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/tencent/rtmp/a/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)F
    .locals 6

    const-string v0, ":"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 3
    aget-object v0, p0, v4

    .line 4
    aget-object v2, p0, v3

    .line 5
    aget-object p0, p0, v1

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, p0

    if-ne v0, v1, :cond_1

    .line 7
    aget-object v2, p0, v4

    .line 8
    aget-object p0, p0, v3

    goto :goto_0

    .line 9
    :cond_1
    array-length v0, p0

    if-ne v0, v3, :cond_2

    .line 10
    aget-object p0, p0, v4

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    :cond_3
    if-eqz p0, :cond_4

    .line 12
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    add-float/2addr v0, p0

    :cond_4
    return v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "TXImageSprite"

    .line 1
    iget-object v1, p0, Lcom/tencent/rtmp/a/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/a/a;

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/tencent/rtmp/a/a$a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/rtmp/a/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "WEBVTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "-->"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " --> "

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 9
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 11
    new-instance v7, Lcom/tencent/rtmp/a/a$c;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/tencent/rtmp/a/a$c;-><init>(B)V

    .line 12
    aget-object v9, v3, v8

    invoke-static {v9}, Lcom/tencent/rtmp/a/a$a;->a(Ljava/lang/String;)F

    move-result v9

    iput v9, v7, Lcom/tencent/rtmp/a/a$c;->a:F

    const/4 v9, 0x1

    .line 13
    aget-object v3, v3, v9

    invoke-static {v3}, Lcom/tencent/rtmp/a/a$a;->a(Ljava/lang/String;)F

    move-result v3

    iput v3, v7, Lcom/tencent/rtmp/a/a$c;->b:F

    .line 14
    iput-object v5, v7, Lcom/tencent/rtmp/a/a$c;->c:Ljava/lang/String;

    const-string v3, "#"

    .line 15
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 16
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/tencent/rtmp/a/a$c;->d:Ljava/lang/String;

    :cond_2
    const-string v3, "="

    .line 17
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v10, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 21
    array-length v5, v3

    const/4 v10, 0x4

    if-ne v5, v10, :cond_3

    .line 22
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/tencent/rtmp/a/a$c;->e:I

    .line 23
    aget-object v5, v3, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/tencent/rtmp/a/a$c;->f:I

    .line 24
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/tencent/rtmp/a/a$c;->g:I

    const/4 v5, 0x3

    .line 25
    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v7, Lcom/tencent/rtmp/a/a$c;->h:I

    :cond_3
    if-eqz v1, :cond_4

    .line 26
    invoke-static {v1}, Lcom/tencent/rtmp/a/a;->a(Lcom/tencent/rtmp/a/a;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 27
    invoke-static {v1}, Lcom/tencent/rtmp/a/a;->a(Lcom/tencent/rtmp/a/a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-nez v2, :cond_1

    .line 28
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :cond_5
    :goto_0
    :try_start_3
    const-string v2, "DownloadAndParseVTTFileTask : getVTT File Error!"

    .line 29
    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    .line 30
    invoke-static {v1}, Lcom/tencent/rtmp/a/a;->c(Lcom/tencent/rtmp/a/a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    :goto_1
    :try_start_5
    const-string v3, "load image sprite failed."

    .line 32
    invoke-static {v0, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_7

    .line 33
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_7
    return-void

    :goto_2
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 34
    :catch_5
    :cond_8
    throw v0
.end method
