.class public Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->b:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic S1(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->c:Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;

    return-object p0
.end method

.method public static T1(Ljava/lang/String;)Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;

    invoke-direct {v0}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "liveId"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public U1()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->OWNER_HAVE_GIFT_LIST:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->f:Ljava/lang/String;

    const-string v2, "ITEM_ID"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "is_type"

    const-string v2, "2"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController$a;-><init>(Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d03ab

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0489

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0484

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/HorizontalPageLayoutManager;-><init>(II)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-direct {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->m(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;

    iget-object v0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->e:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->c:Lcom/guochao/faceshow/facetoface/adapter/GiftPannelAdapter;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->e:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "liveId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/gift/controller/LiveGiftPopController;->U1()V

    return-void
.end method
