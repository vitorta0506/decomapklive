.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/CountryData;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegion:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->F0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)I

    :cond_3
    :goto_0
    return-void
.end method
