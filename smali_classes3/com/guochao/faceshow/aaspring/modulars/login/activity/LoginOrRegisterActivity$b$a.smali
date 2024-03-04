.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->onResponse(Lcom/guochao/faceshow/bean/CountryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

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

    if-nez p1, :cond_0

    return-void

    .line 1
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

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCoding()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->rv_country:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f0122

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->tv_country:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
