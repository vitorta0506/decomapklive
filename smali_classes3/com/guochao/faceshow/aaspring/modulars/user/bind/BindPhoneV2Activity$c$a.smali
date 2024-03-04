.class Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

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

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCountry:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

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

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->d0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->g0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->rvCountry:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->e0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f0122

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->tvCountry:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->b0(Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "+%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
