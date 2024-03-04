.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0004J$\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0008\u0010\u0014\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\u0012\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0017J\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0018\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000fH\u0016J$\u0010!\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\"\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006$"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;",
        "Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "()V",
        "loading",
        "",
        "getLoading",
        "()Z",
        "setLoading",
        "(Z)V",
        "convertItem",
        "",
        "holder",
        "position",
        "",
        "item",
        "dismiss",
        "view",
        "Landroid/view/View;",
        "getLayoutId",
        "initView",
        "loadData",
        "pageNo",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onItemClick",
        "tellEverybody",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tips:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private loading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->tips:Ljava/util/Map;

    const-string v1, "en"

    const-string v2, "hi~, come video chat with me"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ar"

    const-string v2, "\u0645\u0631\u062d\u0628\u064b\u0627 ~ \u060c \u062a\u0639\u0627\u0644 \u0625\u0644\u0649 \u062f\u0631\u062f\u0634\u0629 \u0627\u0644\u0641\u064a\u062f\u064a\u0648 \u0645\u0639\u064a"

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "de"

    const-string v2, "Hallo ~, komm Video-Chat mit mir"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "es"

    const-string v2, "hola ~, ven a chatear por video conmigo"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fr"

    const-string v2, "salut ~, viens chatter en vid\u00e9o avec moi"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hi"

    const-string v2, "\u0939\u093e\u092f ~, \u0906\u0913 \u092e\u0947\u0930\u0947 \u0938\u093e\u0925 \u0935\u0940\u0921\u093f\u092f\u094b \u091a\u0948\u091f \u0915\u0930\u0947\u0902"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    const-string v2, "hai ~, ayo ngobrol video dengan saya"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "it"

    const-string v2, "ciao ~, vieni in chat video con me"

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ja"

    const-string v2, "\u3053\u3093\u306b\u3061\u306f\u301c\u3001\u79c1\u3068\u30d3\u30c7\u30aa\u30c1\u30e3\u30c3\u30c8\u306b\u6765\u3066\u304f\u3060\u3055\u3044"

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ko"

    const-string v2, "\uc548\ub155\ud558\uc138\uc694 ~ \uc800\ub791 \uc601\uc0c1 \ucc44\ud305"

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pt"

    const-string v2, "oi ~, venha conversar por v\u00eddeo comigo"

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ru"

    const-string v2, "\u043f\u0440\u0438\u0432\u0435\u0442 ~, \u043f\u043e\u0439\u0434\u0435\u043c \u0441\u043e \u043c\u043d\u043e\u0439 \u0432 \u0432\u0438\u0434\u0435\u043e\u0447\u0430\u0442"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "th"

    const-string v2, "\u0e2a\u0e27\u0e31\u0e2a\u0e14\u0e35 ~ \u0e21\u0e32\u0e27\u0e34\u0e14\u0e35\u0e42\u0e2d\u0e41\u0e0a\u0e17\u0e01\u0e31\u0e1a\u0e09\u0e31\u0e19"

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vi"

    const-string v2, "ch\u00e0o ~, \u0111\u1ebfn tr\u00f2 chuy\u1ec7n video v\u1edbi t\u00f4i"

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zh"

    const-string v2, "hi\uff5e\uff0c\u5feb\u6765\u8ddf\u6211\u89c6\u9891\u804a\u5929\u5427"

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "zhr"

    const-string v2, "hi\uff5e\uff0c\u5feb\u4f86\u8ddf\u6211\u8996\u983b\u804a\u5929\u5427"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tr"

    const-string v2, "merhaba ~, benimle g\u00f6r\u00fcnt\u00fcl\u00fc sohbet gel"

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->convertItem$lambda-5$lambda-4$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;ILandroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getTips$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->tips:Ljava/util/Map;

    return-object v0
.end method

.method private static final convertItem$lambda-5$lambda-4$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;ILandroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->setSelected(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_7

    const v0, 0x7f0a04bf

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    :cond_0
    const v0, 0x7f0a080d

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getNickName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;

    const v2, 0x7f0a0d97

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;-><init>(Landroid/view/View;)V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getSex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getSex()I

    move-result v1

    :goto_3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/UserGenderAgeHolder;->a(Ljava/lang/String;I)V

    if-eqz p3, :cond_7

    .line 6
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getVipInfo()Lb8/g;

    move-result-object v0

    if-eqz v0, :cond_6

    const v1, 0x7f0a0e13

    .line 7
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    if-eqz v1, :cond_6

    invoke-interface {v0}, Lb8/g;->getVipLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    :cond_6
    const v0, 0x7f0a01ec

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getViewKt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;

    invoke-direct {v0, p3, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;)V

    return-void
.end method

.method public final dismiss(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const-string p1, "tokens/appoint/inviteFriend"

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "friendInfo"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/bean/UserBean;->setIsInvited(I)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0175

    return v0
.end method

.method public final getLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->loading:Z

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->O(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :goto_0
    const/high16 p1, 0x3f400000    # 0.75f

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "#f3f3f3"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41580000    # 13.5f

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;

    invoke-direct {v3, p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$initView$1;-><init>(IILandroid/graphics/Paint;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->hideFooterView()V

    return-void
.end method

.method public loadData(I)V
    .locals 2

    const-string p1, "tokens/appoint/friendList"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v0

    const-string v1, "sex"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$loadData$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$loadData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p1, -0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    const-string v0, "createCenterDialog()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0312

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;)V

    return-void
.end method

.method public final setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->loading:Z

    return-void
.end method

.method public final tellEverybody(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->loading:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->loading:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$tellEverybody$callback$1;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$tellEverybody$callback$1;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getList()Ljava/util/List;

    move-result-object v2

    const-string v3, "list"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

    .line 7
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->setUserId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getAppLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->setAppLanguage(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->setAccountId(Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v4, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getAppLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "it.appLanguage"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$Companion;->getTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->from(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    move-result-object v4

    const-string v5, "from(string)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;-><init>()V

    .line 16
    invoke-virtual {v5, p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setChat_switch(I)V

    .line 17
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getAccount()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->message:Lcom/tencent/imsdk/v2/V2TIMMessage;

    invoke-static {}, Lo9/b;->d()Lo9/a;

    move-result-object v8

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DatingNoticeFriend;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v5, v3, v4}, Lo9/a;->a(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object v3

    invoke-static {v6, v7, v3, v1}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendC2CMessage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/bean/UserBean;->setIsInvited(I)V

    const-string p1, "tokens/appoint/inviteFriend"

    .line 19
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    const-string v1, "friendInfo"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 20
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$tellEverybody$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment$tellEverybody$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DateNoticeFriendFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
