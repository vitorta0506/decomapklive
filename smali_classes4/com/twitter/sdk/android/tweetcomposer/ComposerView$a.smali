.class Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$a;->a:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, p1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->j:Lcom/twitter/sdk/android/tweetcomposer/a$b;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/a$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
