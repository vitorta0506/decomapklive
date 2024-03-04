.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;
.source "SourceFile"


# static fields
.field public static i:Ljava/lang/String; = "key_name"


# instance fields
.field MusicLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

.field emptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:J

.field private h:I

.field rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->g:J

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h:I

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->e2(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h:I

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h:I

    return v0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->g:J

    return-wide p1
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    return-object p0
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    return-object p0
.end method

.method private c2(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/live/voice/room/searchRoomByNames"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method

.method private synthetic d2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->hideSoftKeyboard()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h2(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic e2(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h2(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static f2(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private g2(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->R(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->MusicLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->loadData(I)V

    goto :goto_0

    .line 12
    :cond_1
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->h:I

    .line 13
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static h2(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->getType()I

    move-result v4

    sget v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->h:I

    if-ne v4, v5, :cond_1

    .line 5
    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    if-eqz v3, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->voiceRoomInfoModel:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_5
    :goto_2
    invoke-static {p0, v1, v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0d01e1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d:Ljava/util/List;

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->e:Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;

    .line 7
    sget v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->g:I

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchComprehensiveBean;->setType(I)V

    .line 8
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->c:Ljava/util/List;

    invoke-direct {p1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$l;

    const/high16 v1, 0x41000000    # 8.0f

    .line 17
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->d:Ljava/util/List;

    invoke-direct {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/a0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/a0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/b0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/b0;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter;->setOnItemClickListener(Lz9/a;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->S(Lzd/b;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->rcvRecommended:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f:Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->g2(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->srlRefresh:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q()Z

    :goto_0
    return-void
.end method

.method public loadData(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->g:J

    const-wide/16 v2, 0x64

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v0, "api/token/live/voice/room/searchHotRoom"

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->POST:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->bindToLifecycle(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->g2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->loadData(I)V

    :cond_0
    return-void
.end method
