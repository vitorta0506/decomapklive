.class public Lne/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lke/c;


# direct methods
.method constructor <init>(Lke/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lne/a;->a:Lke/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Lne/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/snapchat/kit/sdk/creative/exceptions/SnapMediaSizeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x12c00000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 2
    new-instance v0, Lne/c;

    invoke-direct {v0, p1}, Lne/c;-><init>(Ljava/io/File;)V

    return-object v0

    .line 3
    :cond_0
    iget-object p1, p0, Lne/a;->a:Lke/c;

    const-string v0, "exceptionMediaSize"

    invoke-virtual {p1, v0}, Lke/c;->a(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/snapchat/kit/sdk/creative/exceptions/SnapMediaSizeException;

    const-string v0, "Media file size should be under 300MB"

    invoke-direct {p1, v0}, Lcom/snapchat/kit/sdk/creative/exceptions/SnapMediaSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/io/File;)Lne/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/snapchat/kit/sdk/creative/exceptions/SnapMediaSizeException;,
            Lcom/snapchat/kit/sdk/creative/exceptions/SnapVideoLengthException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 2
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 4
    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0xea60

    if-ge v2, v4, :cond_1

    const-wide/32 v4, 0x12c00000

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 7
    iget-object v0, p0, Lne/a;->a:Lke/c;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string/jumbo v3, "videoLength"

    invoke-virtual {v0, v3, v1, v2}, Lke/c;->b(Ljava/lang/String;J)V

    .line 8
    new-instance v0, Lne/e;

    invoke-direct {v0, p1}, Lne/e;-><init>(Ljava/io/File;)V

    return-object v0

    .line 9
    :cond_0
    iget-object p1, p0, Lne/a;->a:Lke/c;

    const-string v0, "exceptionMediaSize"

    invoke-virtual {p1, v0}, Lke/c;->a(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/snapchat/kit/sdk/creative/exceptions/SnapMediaSizeException;

    const-string v0, "Media file size should be under 300MB"

    invoke-direct {p1, v0}, Lcom/snapchat/kit/sdk/creative/exceptions/SnapMediaSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    iget-object p1, p0, Lne/a;->a:Lke/c;

    const-string v0, "exceptionVideoLength"

    invoke-virtual {p1, v0}, Lke/c;->a(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/snapchat/kit/sdk/creative/exceptions/SnapVideoLengthException;

    const-string v0, "Video must be under 1 minute long"

    invoke-direct {p1, v0}, Lcom/snapchat/kit/sdk/creative/exceptions/SnapVideoLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
