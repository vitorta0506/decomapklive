.class Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/util/List;)V
    .locals 4
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

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/CountryData;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object v2, v2, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->i0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->d0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->g0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag1:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f0122

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object v3, v3, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_flag:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->e0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->national_txt:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b$a;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity$b;->a:Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;->b0(Lcom/guochao/faceshow/mine/view/BindCellPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
