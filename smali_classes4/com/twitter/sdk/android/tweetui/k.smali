.class Lcom/twitter/sdk/android/tweetui/k;
.super Lcom/twitter/sdk/android/tweetui/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/k$a;
    }
.end annotation


# instance fields
.field final b:Lcom/twitter/sdk/android/core/models/l;

.field final c:Lcom/twitter/sdk/android/tweetui/z;

.field final d:Lcom/twitter/sdk/android/tweetui/d0;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/tweetui/d0;Lcom/twitter/sdk/android/core/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/l;",
            "Lcom/twitter/sdk/android/tweetui/d0;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/models/l;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/c;-><init>(Lcom/twitter/sdk/android/core/b;)V

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/k;->b:Lcom/twitter/sdk/android/core/models/l;

    .line 3
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/k;->d:Lcom/twitter/sdk/android/tweetui/d0;

    .line 4
    invoke-virtual {p2}, Lcom/twitter/sdk/android/tweetui/d0;->d()Lcom/twitter/sdk/android/tweetui/z;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/k;->c:Lcom/twitter/sdk/android/tweetui/z;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/twitter/sdk/android/tweetui/ToggleImageButton;

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/k;->b:Lcom/twitter/sdk/android/core/models/l;

    iget-boolean v1, v0, Lcom/twitter/sdk/android/core/models/l;->g:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/k;->c:Lcom/twitter/sdk/android/tweetui/z;

    iget-wide v2, v0, Lcom/twitter/sdk/android/core/models/l;->i:J

    new-instance v4, Lcom/twitter/sdk/android/tweetui/k$a;

    .line 5
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/c;->a()Lcom/twitter/sdk/android/core/b;

    move-result-object v5

    invoke-direct {v4, p1, v0, v5}, Lcom/twitter/sdk/android/tweetui/k$a;-><init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/core/b;)V

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/z;->i(JLcom/twitter/sdk/android/core/b;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/k;->c:Lcom/twitter/sdk/android/tweetui/z;

    iget-wide v2, v0, Lcom/twitter/sdk/android/core/models/l;->i:J

    new-instance v4, Lcom/twitter/sdk/android/tweetui/k$a;

    .line 8
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/c;->a()Lcom/twitter/sdk/android/core/b;

    move-result-object v5

    invoke-direct {v4, p1, v0, v5}, Lcom/twitter/sdk/android/tweetui/k$a;-><init>(Lcom/twitter/sdk/android/tweetui/ToggleImageButton;Lcom/twitter/sdk/android/core/models/l;Lcom/twitter/sdk/android/core/b;)V

    .line 9
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/z;->d(JLcom/twitter/sdk/android/core/b;)V

    :cond_1
    :goto_0
    return-void
.end method
