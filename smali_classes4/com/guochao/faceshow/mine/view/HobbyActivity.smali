.class public Lcom/guochao/faceshow/mine/view/HobbyActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lya/a;


# instance fields
.field a:Lxa/a;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ivAddTag:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tagHobby:Lme/gujun/android/taggroup/TagGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tagSelectedLabel:Lme/gujun/android/taggroup/TagGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/HobbyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/HobbyActivity;->g0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagHobby:Lme/gujun/android/taggroup/TagGroup;

    new-instance v1, Lcom/guochao/faceshow/mine/view/HobbyActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/HobbyActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/HobbyActivity;)V

    invoke-virtual {v0, v1}, Lme/gujun/android/taggroup/TagGroup;->setOnTagClickListener(Lme/gujun/android/taggroup/TagGroup$e;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagSelectedLabel:Lme/gujun/android/taggroup/TagGroup;

    new-instance v1, Lcom/guochao/faceshow/mine/view/HobbyActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/HobbyActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/HobbyActivity;)V

    invoke-virtual {v0, v1}, Lme/gujun/android/taggroup/TagGroup;->setOnTagClickListener(Lme/gujun/android/taggroup/TagGroup$e;)V

    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    new-instance v0, Lxa/a;

    invoke-direct {v0, p0}, Lxa/a;-><init>(Lya/a;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->a:Lxa/a;

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lxa/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private g0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->UPDATE_USER_HOBBIES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "hobbyIds"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/mine/view/HobbyActivity$d;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/HobbyActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/HobbyActivity;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public J()V
    .locals 2

    const-class v0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Ljava/lang/Class;I)V

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagSelectedLabel:Lme/gujun/android/taggroup/TagGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagSelectedLabel:Lme/gujun/android/taggroup/TagGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d005e

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1207b4

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/HobbyActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/HobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    :cond_0
    return-void
.end method

.method public j(Lcom/guochao/faceshow/mine/model/HobbyResultBean;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getUserHobbies()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->getSysHobbies()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getHobbyId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagSelectedLabel:Lme/gujun/android/taggroup/TagGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagSelectedLabel:Lme/gujun/android/taggroup/TagGroup;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v1}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->getTags()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagHobby:Lme/gujun/android/taggroup/TagGroup;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->f:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagHobby:Lme/gujun/android/taggroup/TagGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x17

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo p1, "tag"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string/jumbo v0, "tagId"

    .line 3
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->f:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p3, Lcom/guochao/faceshow/mine/model/HobbyBean;

    invoke-direct {p3}, Lcom/guochao/faceshow/mine/model/HobbyBean;-><init>()V

    .line 6
    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setHobbyId(I)V

    .line 7
    invoke-virtual {p3, p1}, Lcom/guochao/faceshow/mine/model/HobbyBean;->setTags(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->c:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->tagHobby:Lme/gujun/android/taggroup/TagGroup;

    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Lme/gujun/android/taggroup/TagGroup;->setTags(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120416

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/HobbyActivity;->e0()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/HobbyActivity;->d0()V

    return-void
.end method

.method public onViewClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/HobbyActivity;->a:Lxa/a;

    invoke-virtual {v0}, Lxa/a;->a()V

    return-void
.end method
