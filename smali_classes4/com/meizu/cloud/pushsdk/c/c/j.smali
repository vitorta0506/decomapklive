.class public abstract Lcom/meizu/cloud/pushsdk/c/c/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/c/g;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/c/c/j;
    .locals 1

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/c/j$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/c/c/j$2;-><init>(Lcom/meizu/cloud/pushsdk/c/c/g;Ljava/io/File;)V

    return-object v0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/c/g;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/j;
    .locals 2

    sget-object v0, Lcom/meizu/cloud/pushsdk/c/c/m;->c:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/g;->b()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/c/g;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/c/c/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/cloud/pushsdk/c/c/j;->a(Lcom/meizu/cloud/pushsdk/c/c/g;[B)Lcom/meizu/cloud/pushsdk/c/c/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/c/g;[B)Lcom/meizu/cloud/pushsdk/c/c/j;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/meizu/cloud/pushsdk/c/c/j;->a(Lcom/meizu/cloud/pushsdk/c/c/g;[BII)Lcom/meizu/cloud/pushsdk/c/c/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/c/g;[BII)Lcom/meizu/cloud/pushsdk/c/c/j;
    .locals 7

    const-string v0, "content == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lcom/meizu/cloud/pushsdk/c/c/m;->a(JJJ)V

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/c/j$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/meizu/cloud/pushsdk/c/c/j$1;-><init>(Lcom/meizu/cloud/pushsdk/c/c/g;I[BI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/meizu/cloud/pushsdk/c/c/g;
.end method

.method public abstract a(Lcom/meizu/cloud/pushsdk/c/g/c;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public b()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method
