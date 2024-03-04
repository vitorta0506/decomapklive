.class public Lv9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initFacebook()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "\n"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    new-instance p2, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p2

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p2, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 11
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {p2, p1, p0}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initFacebook()V

    .line 2
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShortUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 6
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, p0}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initFacebook()V

    .line 3
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 7
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v0, p1, p0}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void
.end method
