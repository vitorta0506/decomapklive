.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->c(Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v1, v1

    mul-float v1, v1, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    float-to-int v2, v3

    .line 7
    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils$VerticalCenterSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "*"

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->content:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getGiftNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
