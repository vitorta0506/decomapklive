.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->b:Ljava/lang/ref/WeakReference;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->c:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    if-eqz p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setTranslateing(Z)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;->a()V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;

    invoke-direct {v3, p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isShowtranslateContent()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setShowtranslateContent(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;->a()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setShowtranslateContent(Z)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;->a()V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
