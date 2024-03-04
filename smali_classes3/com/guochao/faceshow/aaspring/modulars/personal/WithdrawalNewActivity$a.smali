.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->a1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/bean/CountryData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;)Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/WithdrawalChaChe;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->tvRegion:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;->F0(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;I)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalNewActivity$a;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    :cond_2
    :goto_0
    return-void
.end method
