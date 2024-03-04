.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

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

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/CountryData;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->setCname(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->setCountry_id(I)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getCountryNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->setCountry_num(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/CountryData;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->setLogo(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;

    .line 13
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->getCountry_id()I

    move-result v2

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->getCountry_id()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->setCheck(Z)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    goto :goto_2

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->showEmptyView()V

    :goto_2
    return-void
.end method
