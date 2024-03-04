.class public Lic/g;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/g$a;
    }
.end annotation


# instance fields
.field private a:Lokio/BufferedSource;

.field private b:Lokhttp3/ResponseBody;

.field private c:Lic/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/ResponseBody;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 2
    iput-object p2, p0, Lic/g;->b:Lokhttp3/ResponseBody;

    .line 3
    sget-object p2, Lic/e;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lic/f;

    iput-object p1, p0, Lic/g;->c:Lic/f;

    return-void
.end method

.method static synthetic a(Lic/g;)Lokhttp3/ResponseBody;
    .locals 0

    iget-object p0, p0, Lic/g;->b:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method static synthetic b(Lic/g;)Lic/f;
    .locals 0

    iget-object p0, p0, Lic/g;->c:Lic/f;

    return-object p0
.end method

.method static synthetic c(Lic/g;Lic/f;)Lic/f;
    .locals 0

    iput-object p1, p0, Lic/g;->c:Lic/f;

    return-object p1
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lic/g;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lic/g;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .line 1
    iget-object v0, p0, Lic/g;->a:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lic/g$a;

    iget-object v1, p0, Lic/g;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lic/g$a;-><init>(Lic/g;Lokio/Source;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lic/g;->a:Lokio/BufferedSource;

    .line 3
    :cond_0
    iget-object v0, p0, Lic/g;->a:Lokio/BufferedSource;

    return-object v0
.end method
