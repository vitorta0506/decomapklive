.class Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->d(ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->appendSpannerDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    const-string v0, "*"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->secondaryTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getGiftNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
