.class Lcom/twitter/sdk/android/tweetui/g;
.super Lcom/twitter/sdk/android/tweetui/i;
.source "SourceFile"


# instance fields
.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/MediaEntity;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getStart()I

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getEnd()I

    move-result v2

    iget-object v3, p1, Lcom/twitter/sdk/android/core/models/UrlEntity;->displayUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/twitter/sdk/android/core/models/UrlEntity;->url:Ljava/lang/String;

    iget-object v5, p1, Lcom/twitter/sdk/android/core/models/UrlEntity;->expandedUrl:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/i;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/g;->f:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/g;->g:Ljava/lang/String;

    return-void
.end method
