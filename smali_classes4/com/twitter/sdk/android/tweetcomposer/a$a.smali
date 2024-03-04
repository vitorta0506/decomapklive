.class Lcom/twitter/sdk/android/tweetcomposer/a$a;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/a;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$a;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/a$a;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/a$a;->a:Lcom/twitter/sdk/android/tweetcomposer/a;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/User;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V

    return-void
.end method
