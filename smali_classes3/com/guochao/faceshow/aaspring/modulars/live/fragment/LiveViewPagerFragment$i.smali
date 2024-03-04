.class Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/fragment/app/Fragment;

.field final c:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Z)V
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->c:Landroid/util/SparseIntArray;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    const v1, 0x7f1204d5

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    const v1, 0x7f120039

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p3, :cond_0

    .line 6
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    const v6, 0x7f120a56

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 8
    invoke-virtual {p2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p3, 0x7

    .line 9
    invoke-virtual {p2, v4, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    invoke-virtual {p2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    invoke-virtual {p2, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    invoke-virtual {p2, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 15
    invoke-virtual {p2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    invoke-virtual {p2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 17
    invoke-virtual {p2, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    const p3, 0x7f12005c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    const p3, 0x7f12048e

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    const p3, 0x7f12039f

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->b:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/MultiLiveListFragment;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;->newInstance()Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomListFragment;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getInstance(ILcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment$i;->b:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
