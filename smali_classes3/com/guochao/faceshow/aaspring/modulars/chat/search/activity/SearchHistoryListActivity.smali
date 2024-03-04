.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field cancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field deleteEdit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchContent:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;-><init>()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->n0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static m0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private n0(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->b:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    const-wide/16 v0, 0x64

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/k;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/k;

    move-result-object p1

    .line 6
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;)V

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a7

    return v0
.end method

.method public i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->c(Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;ZLjava/lang/String;)V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->initView()V

    const v0, 0x7f0a0a24

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->searchContent:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public k0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V
    .locals 0

    return-void
.end method

.method public loadData(I)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->searchContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->n0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->k0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;ILcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01af

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02a8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->searchContent:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
