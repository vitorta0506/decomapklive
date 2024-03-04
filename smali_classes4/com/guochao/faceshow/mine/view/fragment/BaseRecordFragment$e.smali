.class Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/mine/model/RecordBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/model/RecordBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Record"

    const-string v1, "onResponse: "

    .line 4
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 5
    iget-object v2, p2, Lcom/guochao/faceshow/mine/model/RecordBean;->page:Lcom/guochao/faceshow/mine/model/RecordBean$PageBean;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean;->list:Ljava/util/List;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;

    .line 8
    iget v5, v4, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->isType:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    .line 9
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object v4, p2, Lcom/guochao/faceshow/mine/model/RecordBean;->page:Lcom/guochao/faceshow/mine/model/RecordBean$PageBean;

    iget v4, v4, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean;->totalPage:I

    invoke-static {v2, v4}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Y1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;I)I

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {v2}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->T1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->rlEmptyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->h:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->rlEmptyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->h:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->addData(Ljava/util/List;)V

    .line 20
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvTime:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/guochao/faceshow/mine/model/RecordBean;->result:Lcom/guochao/faceshow/mine/model/RecordBean$ResultBean;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/model/RecordBean$ResultBean;->time:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvIncome:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/guochao/faceshow/mine/model/RecordBean;->result:Lcom/guochao/faceshow/mine/model/RecordBean$ResultBean;

    iget v2, v2, Lcom/guochao/faceshow/mine/model/RecordBean$ResultBean;->Income:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->tvSpending:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1208e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/guochao/faceshow/mine/model/RecordBean;->result:Lcom/guochao/faceshow/mine/model/RecordBean$ResultBean;

    iget p2, p2, Lcom/guochao/faceshow/mine/model/RecordBean$ResultBean;->payPrice:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 25
    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->T1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I

    move-result p2

    if-ne p2, p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->rlEmptyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->h:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->D()V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->a:Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->C()V

    goto :goto_4

    .line 31
    :cond_8
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;->onFailure(Lg7/a;)V

    :goto_4
    return-void
.end method
