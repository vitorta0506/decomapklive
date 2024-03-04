.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

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

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

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

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f0f011b

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    const v1, 0x7f0f011c

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f0122

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    new-instance v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;-><init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    :cond_3
    :goto_1
    return-void
.end method
