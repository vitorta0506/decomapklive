.class Lcom/twitter/sdk/android/tweetui/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetui/b;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/b;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/b$b;->a:Lcom/twitter/sdk/android/tweetui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b$b;->a:Lcom/twitter/sdk/android/tweetui/b;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/b;->getPermalinkUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b$b;->a:Lcom/twitter/sdk/android/tweetui/b;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetui/b;->k()V

    return-void
.end method
