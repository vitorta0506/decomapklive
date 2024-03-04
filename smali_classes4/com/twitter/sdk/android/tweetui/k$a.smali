.class Lcom/twitter/sdk/android/tweetui/k$a;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/l;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

.field final b:Lcom/twitter/sdk/android/core/models/l;

.field final c:Lcom/twitter/sdk/android/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/core/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/tweetui/ToggleImageButton;",
            "Lcom/twitter/sdk/android/core/models/l;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/k$a;->a:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/k$a;->b:Lcom/twitter/sdk/android/core/models/l;

    .line 4
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/k$a;->c:Lcom/twitter/sdk/android/core/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/twitter/sdk/android/core/TwitterApiException;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterApiException;

    .line 3
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x8b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->a:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/k$a;->b:Lcom/twitter/sdk/android/core/models/l;

    iget-boolean v1, v1, Lcom/twitter/sdk/android/core/models/l;->g:Z

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;->setToggledOn(Z)V

    .line 5
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->c:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/twitter/sdk/android/core/models/m;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/m;-><init>()V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->b:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/models/m;->b(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/m;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/models/m;->c(Z)Lcom/twitter/sdk/android/core/models/m;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/m;->a()Lcom/twitter/sdk/android/core/models/l;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->c:Lcom/twitter/sdk/android/core/b;

    new-instance v1, Lcom/twitter/sdk/android/core/i;

    invoke-direct {v1, p1, v2}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Lcom/twitter/sdk/android/core/models/m;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/m;-><init>()V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->b:Lcom/twitter/sdk/android/core/models/l;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/models/m;->b(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/m;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/models/m;->c(Z)Lcom/twitter/sdk/android/core/models/m;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/m;->a()Lcom/twitter/sdk/android/core/models/l;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->c:Lcom/twitter/sdk/android/core/b;

    new-instance v1, Lcom/twitter/sdk/android/core/i;

    invoke-direct {v1, p1, v2}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Lretrofit2/Response;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    return-void

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->a:Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/k$a;->b:Lcom/twitter/sdk/android/core/models/l;

    iget-boolean v1, v1, Lcom/twitter/sdk/android/core/models/l;->g:Z

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;->setToggledOn(Z)V

    .line 13
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->c:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k$a;->c:Lcom/twitter/sdk/android/core/b;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/b;->b(Lcom/twitter/sdk/android/core/i;)V

    return-void
.end method
