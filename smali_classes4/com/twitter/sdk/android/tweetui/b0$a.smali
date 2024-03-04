.class final Lcom/twitter/sdk/android/tweetui/b0$a;
.super Lcom/twitter/sdk/android/tweetui/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/b0;->b(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/i;Lcom/twitter/sdk/android/tweetui/l;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/twitter/sdk/android/tweetui/l;

.field final synthetic g:Lcom/twitter/sdk/android/tweetui/i;


# direct methods
.method constructor <init>(IIZLcom/twitter/sdk/android/tweetui/l;Lcom/twitter/sdk/android/tweetui/i;)V
    .locals 0

    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/b0$a;->f:Lcom/twitter/sdk/android/tweetui/l;

    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/b0$a;->g:Lcom/twitter/sdk/android/tweetui/i;

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/internal/b;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/b0$a;->f:Lcom/twitter/sdk/android/tweetui/l;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/b0$a;->g:Lcom/twitter/sdk/android/tweetui/i;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/i;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitter/sdk/android/tweetui/l;->a(Ljava/lang/String;)V

    return-void
.end method
