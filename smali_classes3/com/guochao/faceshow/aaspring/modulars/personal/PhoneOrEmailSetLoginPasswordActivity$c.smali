.class Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/bean/CountryData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    const v0, 0x7f0f011b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    const v0, 0x7f0f011c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f0122

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvCountry:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 11
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "+%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    :cond_4
    :goto_1
    return-void
.end method
