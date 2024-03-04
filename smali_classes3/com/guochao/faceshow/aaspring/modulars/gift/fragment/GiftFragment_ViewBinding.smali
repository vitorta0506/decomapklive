.class public Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 3
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0a0e05

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0b26

    const-string v2, "field \'mTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 5
    const-class v0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    const v1, 0x7f0a0179

    const-string v2, "field \'mNumCheckSendView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a010a

    const-string v2, "field \'mTextViewDiamonds\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTextViewDiamonds:Landroid/widget/TextView;

    const v0, 0x7f0a0098

    const-string v1, "method \'initAd\'"

    .line 7
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 8
    const-class v2, Landroid/view/ViewGroup;

    const-string v3, "field \'mAdsView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsView:Landroid/view/ViewGroup;

    .line 9
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->c:Landroid/view/View;

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0092

    const-string v2, "field \'mAdsArea\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a091d

    const-string v1, "field \'mRankList\' and method \'fansRank\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 13
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mRankList\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mRankList:Landroid/widget/ImageView;

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->d:Landroid/view/View;

    .line 15
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0095

    const-string v2, "field \'mAdsTips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->b(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsTips:Landroid/widget/ImageView;

    const v0, 0x7f0a06e3

    const-string v1, "field \'llMultiPlayer\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->llMultiPlayer:Landroid/view/View;

    .line 18
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a095c

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a05f2

    const-string v1, "field \'ivUserInfo\' and method \'onViewClicked\'"

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivUserInfo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivUserInfo:Landroid/widget/ImageView;

    .line 21
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->e:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03e5

    const-string v1, "field \'firstRechargeActivity\'"

    .line 23
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeActivity:Landroid/view/View;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03e7

    const-string v2, "field \'firstRechargeBottomText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeBottomText:Landroid/widget/TextView;

    const v0, 0x7f0a05f8

    const-string v1, "field \'ivWeight\'"

    .line 25
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivWeight:Landroid/view/View;

    const v0, 0x7f0a07d8

    const-string v1, "field \'myCollection\' and method \'collectionClick\'"

    .line 26
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 27
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'myCollection\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    .line 28
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->f:Landroid/view/View;

    .line 29
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b21

    const-string v1, "field \'tabLayout\'"

    .line 30
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->tabLayout:Landroid/view/View;

    const v0, 0x7f0a0107

    const-string v1, "field \'backpackTitle\'"

    .line 31
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->backpackTitle:Landroid/view/View;

    const v0, 0x7f0a019b

    const-string v1, "field \'topSend\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->topSend:Landroid/view/View;

    const v0, 0x7f0a072c

    const-string v1, "field \'luckyGiftHeader\' and method \'gotoLuckyDetail\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftHeader:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->g:Landroid/view/View;

    .line 36
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$e;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a072b

    const-string v2, "field \'luckyGiftAnimator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftAnimator:Landroid/widget/ImageView;

    .line 38
    const-class v0, Lcom/guochao/faceshow/gift/view/GiftComboView;

    const v1, 0x7f0a0226

    const-string v2, "field \'giftComboView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/view/GiftComboView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a048d

    const-string v2, "field \'luckyGiftRule\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftRule:Landroid/widget/TextView;

    const v0, 0x7f0a03d5

    const-string v1, "field \'firstCharge\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstCharge:Landroid/view/View;

    .line 41
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03eb

    const-string v2, "field \'firstRechargeHeader\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03ee

    const-string v2, "field \'firstRechargeText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeText:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a05ab

    const-string v2, "field \'firstRechargeGet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeGet:Landroid/widget/TextView;

    const v0, 0x7f0a093e

    const-string v1, "field \'realContent\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->realContent:Landroid/view/View;

    const v0, 0x7f0a0a4b

    const-string v1, "field \'mSelectAllView\' and method \'selectAll\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 46
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->h:Landroid/view/View;

    .line 48
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$f;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01df

    const-string v1, "method \'gotoCharge\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->i:Landroid/view/View;

    .line 51
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$g;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a032b

    const-string v1, "method \'dismiss\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 53
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->j:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTabLayout:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mNumCheckSendView:Lcom/guochao/faceshow/gift/view/NumCheckSendView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mTextViewDiamonds:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsView:Landroid/view/ViewGroup;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsArea:Landroid/view/ViewGroup;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mRankList:Landroid/widget/ImageView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mAdsTips:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->llMultiPlayer:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivUserInfo:Landroid/widget/ImageView;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeActivity:Landroid/view/View;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeBottomText:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->ivWeight:Landroid/view/View;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->myCollection:Landroid/widget/ImageView;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->tabLayout:Landroid/view/View;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->backpackTitle:Landroid/view/View;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->topSend:Landroid/view/View;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftHeader:Landroid/view/View;

    .line 22
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftAnimator:Landroid/widget/ImageView;

    .line 23
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->giftComboView:Lcom/guochao/faceshow/gift/view/GiftComboView;

    .line 24
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->luckyGiftRule:Landroid/widget/TextView;

    .line 25
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstCharge:Landroid/view/View;

    .line 26
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeHeader:Landroid/view/ViewGroup;

    .line 27
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeText:Landroid/widget/TextView;

    .line 28
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->firstRechargeGet:Landroid/widget/TextView;

    .line 29
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->realContent:Landroid/view/View;

    .line 30
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;->mSelectAllView:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->c:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->d:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->e:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->f:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->g:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->h:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->i:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment_ViewBinding;->j:Landroid/view/View;

    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
