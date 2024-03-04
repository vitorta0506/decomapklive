.class Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/InterestsAndHobbiesBean;->getHobbyBeans()Ljava/util/List;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;

    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/InterestsAndHobbiesActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
