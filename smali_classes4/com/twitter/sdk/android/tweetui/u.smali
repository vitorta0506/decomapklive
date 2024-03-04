.class Lcom/twitter/sdk/android/tweetui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/models/l;

.field final b:Lcom/twitter/sdk/android/tweetui/d0;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/tweetui/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/u;->a:Lcom/twitter/sdk/android/core/models/l;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/u;->b:Lcom/twitter/sdk/android/tweetui/d0;

    return-void
.end method


# virtual methods
.method a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__share_content_format:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/u;->a:Lcom/twitter/sdk/android/core/models/l;

    iget-object v3, v2, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-wide v2, v2, Lcom/twitter/sdk/android/core/models/l;->i:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "text/plain"

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method c(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__share_subject_format:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/u;->a:Lcom/twitter/sdk/android/core/models/l;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    iget-object v3, v2, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method d(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p2, p1}, Lcom/twitter/sdk/android/core/f;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object p1

    const-string p2, "TweetUi"

    const-string v0, "Activity cannot be found to handle share intent"

    .line 3
    invoke-interface {p1, p2, v0}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method e(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/u;->a:Lcom/twitter/sdk/android/core/models/l;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/u;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/u;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/u;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    sget v1, Lcom/twitter/sdk/android/tweetui/R$string;->tw__share_tweet:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/twitter/sdk/android/tweetui/u;->d(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/tweetui/u;->e(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method
