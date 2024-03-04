.class public abstract Lcom/twitter/sdk/android/tweetui/internal/b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/c;


# instance fields
.field public final a:I

.field private final b:I

.field private final c:Z

.field private final d:Z

.field private e:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/twitter/sdk/android/tweetui/internal/b;-><init>(IIZZ)V

    return-void
.end method

.method constructor <init>(IIZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 3
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->b:I

    .line 4
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->a:I

    .line 5
    iput-boolean p3, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->c:Z

    .line 6
    iput-boolean p4, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->e:Z

    return-void
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->e:Z

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->e:Z

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->b:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 7
    :goto_1
    iget-boolean v0, p0, Lcom/twitter/sdk/android/tweetui/internal/b;->d:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_2
    return-void
.end method
