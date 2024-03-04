.class public abstract Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Lcom/guochao/faceshow/views/c;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/mine/model/TransactionType;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

.field private f:I

.field private g:I

.field h:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

.field private i:Z

.field ivDateImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivEmptyImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llRootLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlEmptyViewLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field spaceWeight:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvIncome:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSpending:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const-string v0, "0"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->f:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->Z1()V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->f:I

    return p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->f:I

    return p1
.end method

.method static synthetic V1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->f:I

    return v0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->e2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)V

    return-void
.end method

.method static synthetic X1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->g:I

    return p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->g:I

    return p1
.end method

.method private Z1()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->i:Z

    .line 2
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->TRANSACTION_RECORD_LIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a:Ljava/lang/String;

    const-string/jumbo v2, "type"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertNumberToNormalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "limit"

    const-string v3, "20"

    .line 6
    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$e;-><init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private a2()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getGameSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x3ec

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1205cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1209c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1208e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x3e9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12069c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v3, 0x4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120676

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/4 v3, 0x5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120675

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x3ea

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12016b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 20
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x3eb

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1208f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    const/16 v3, 0x3ed

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1202e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/model/TransactionType;-><init>(ILjava/lang/String;)V

    .line 24
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$b;-><init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    invoke-direct {v0, v3, v4}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter$b;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->e:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    .line 26
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 27
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->e:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->e:Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;

    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/mine/adapter/RecordTitleAdapter;->notifyDataSetChanged(Ljava/util/List;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f060133

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    new-array v2, v2, [I

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5, v5, v2}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 34
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 35
    new-instance v0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d0440

    invoke-direct {v0, p0, v2, v3}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$c;-><init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->h:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;

    .line 36
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->lvTransactionRecord:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 38
    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v2, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 40
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableOverScroll(Z)V

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 42
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setAutoLoadMore(Z)V

    .line 44
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->refreshLayout:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$d;-><init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    return-void
.end method

.method private e2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)V
    .locals 4

    .line 1
    iget v0, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->isType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f1202c4

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f1202c3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    iget-object v3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f1202c2

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    iget-object v3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->accountUserName:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const v0, 0x7f1202c0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    const v0, 0x7f1202bf

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    const v0, 0x7f1202be

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object p2, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0f0615

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "#22ac38"

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->ivDateImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment$a;-><init>(Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/mine/view/MyWalletActivity;

    if-eqz v1, :cond_0

    const v1, 0x7f0a05ee

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->spaceWeight:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public c2(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d2(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 2
    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p2, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->createTime:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->price:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p5, Lcom/guochao/faceshow/mine/model/RecordBean$PageBean$RecordDetails;->numbers:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {p8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-virtual {p1, p9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01cf

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b2()V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, p2

    const/16 p2, 0xa

    if-ge p1, p2, :cond_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->b:Ljava/lang/String;

    const-string/jumbo p2, "tagday"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->a2()V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/fragment/BaseRecordFragment;->initListener()V

    return-void
.end method
