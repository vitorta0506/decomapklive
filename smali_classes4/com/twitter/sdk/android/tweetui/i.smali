.class Lcom/twitter/sdk/android/tweetui/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/i;->a:I

    .line 3
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/i;->b:I

    .line 4
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/i;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/i;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/i;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Lcom/twitter/sdk/android/core/models/HashtagEntity;)Lcom/twitter/sdk/android/tweetui/i;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/i;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/HashtagEntity;->getStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/HashtagEntity;->getEnd()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/i;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static b(Lcom/twitter/sdk/android/core/models/MentionEntity;)Lcom/twitter/sdk/android/tweetui/i;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/MentionEntity;->screenName:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/i;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/MentionEntity;->getStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/MentionEntity;->getEnd()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/MentionEntity;->screenName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/i;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static c(Lcom/twitter/sdk/android/core/models/SymbolEntity;)Lcom/twitter/sdk/android/tweetui/i;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/SymbolEntity;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/i;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/SymbolEntity;->getStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/SymbolEntity;->getEnd()I

    move-result v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/SymbolEntity;->text:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/twitter/sdk/android/tweetui/i;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Lcom/twitter/sdk/android/core/models/UrlEntity;)Lcom/twitter/sdk/android/tweetui/i;
    .locals 7

    new-instance v6, Lcom/twitter/sdk/android/tweetui/i;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/models/UrlEntity;->getEnd()I

    move-result v2

    iget-object v3, p0, Lcom/twitter/sdk/android/core/models/UrlEntity;->displayUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/models/UrlEntity;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/models/UrlEntity;->expandedUrl:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/i;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
