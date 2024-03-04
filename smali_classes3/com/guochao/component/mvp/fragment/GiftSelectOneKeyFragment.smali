.class public final Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;
.super Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;,
        Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;,
        Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;,
        Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 ?2\u00020\u0001:\u0004?@ABB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u00101\u001a\u00020\u0006J\u0008\u00102\u001a\u000203H\u0016J \u00104\u001a\u00020\u00052\u0016\u00105\u001a\u0012\u0012\u0004\u0012\u00020706j\u0008\u0012\u0004\u0012\u000207`8H\u0002J\u001a\u00109\u001a\u00020\u00062\u0006\u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0015J\u0012\u0010>\u001a\u00020\u00062\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001e\u0010\u000b\u001a\u00060\u000cR\u00020\u0000X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0017\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001b\"\u0004\u0008 \u0010\u001dR$\u0010!\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001b\"\u0004\u0008#\u0010\u001dR$\u0010$\u001a\u00020%8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008&\u0010\u0002\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001b\u0010+\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u0008-\u0010.\u00a8\u0006C"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;",
        "Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;",
        "()V",
        "callBack",
        "Lkotlin/Function1;",
        "",
        "",
        "getCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "setCallBack",
        "(Lkotlin/jvm/functions/Function1;)V",
        "mAdapter",
        "Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;",
        "getMAdapter",
        "()Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;",
        "setMAdapter",
        "(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;)V",
        "mData",
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
        "getMData",
        "()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
        "setMData",
        "(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)V",
        "multiGift",
        "",
        "Lcom/guochao/component/mvp/model/GiftModel;",
        "getMultiGift",
        "()Ljava/util/List;",
        "setMultiGift",
        "(Ljava/util/List;)V",
        "oneGift",
        "getOneGift",
        "setOneGift",
        "unGetGift",
        "getUnGetGift",
        "setUnGetGift",
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;)V",
        "viewModel",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "checkButton",
        "createCenterDialog",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "hasDressup",
        "dataList",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/component/mvp/model/TypeData;",
        "Lkotlin/collections/ArrayList;",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "Companion",
        "GiftSelectAdapter",
        "GiftSelectViewHolder",
        "GiftSingleSelectAdapter",
        "component_mvp_release"
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
.field public static final Companion:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private multiGift:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oneGift:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unGetGift:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 4
    new-instance v0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->initView$lambda-8(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->initView$lambda-0(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->initView$lambda-20$lambda-19$lambda-18(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic T1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->initView$lambda-9(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$hasDressup(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/ArrayList;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->hasDressup(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method private final hasDressup(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/model/TypeData;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-20$lambda-19$lambda-18(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 1>"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p5}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;->setSelectedPosition(I)V

    .line 2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    .line 3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/guochao/component/mvp/model/TypeData;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p4, v0}, Lcom/guochao/component/mvp/model/TypeData;->setSelected(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/component/mvp/model/TypeData;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/guochao/component/mvp/model/TypeData;->setSelected(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    invoke-virtual {p1, p5}, Lcom/guochao/component/mvp/model/GiftModel;->setSelected(I)V

    .line 8
    invoke-virtual {p2}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->checkButton()V

    return-void
.end method

.method private static final initView$lambda-8(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Landroid/view/View;)V
    .locals 13

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->oneGift:Ljava/util/List;

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/component/mvp/model/TypeData;

    .line 7
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getSelected()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v8

    if-ne v8, v2, :cond_1

    .line 8
    :cond_2
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    .line 9
    iget-object v9, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    .line 10
    :goto_1
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v4

    .line 12
    :goto_2
    new-instance v12, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    .line 13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 14
    invoke-direct {v12, v8, v9, v11, v10}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 16
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 19
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/component/mvp/model/GiftModel;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 20
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getSelected()I

    move-result v7

    if-ne v7, v3, :cond_7

    const/4 v6, 0x1

    :cond_7
    if-eqz v6, :cond_8

    return-void

    :cond_8
    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 22
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/component/mvp/model/TypeData;

    .line 23
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getSelected()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v8

    if-ne v8, v2, :cond_9

    .line 24
    :cond_a
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    .line 25
    iget-object v9, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getLevel()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_4

    :cond_b
    const/4 v9, -0x1

    .line 26
    :goto_4
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/TypeData;->getBussinessId()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_c
    move-object v11, v4

    .line 28
    :goto_5
    new-instance v12, Lcom/guochao/component/mvp/model/GetRewardRequestModel;

    .line 29
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 30
    invoke-direct {v12, v8, v9, v11, v10}, Lcom/guochao/component/mvp/model/GetRewardRequestModel;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 32
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_d
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v1

    new-instance v2, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;

    invoke-direct {v2, p0, v0, v4}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$initView$3$3;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v1, p1, v2}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getReward(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final initView$lambda-9(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<anonymous parameter 1>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final newInstance(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;
    .locals 1
    .param p0    # Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->Companion:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$Companion;->newInstance(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkButton()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v5, :cond_3

    .line 4
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getSelected()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    move-object v3, v4

    .line 5
    :cond_4
    check-cast v3, Lcom/guochao/component/mvp/model/GiftModel;

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->okTV:Landroid/widget/TextView;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    .line 7
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->okTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_4
    return-void
.end method

.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getCallBack()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getMAdapter()Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    return-object v0
.end method

.method public final getMData()Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    return-object v0
.end method

.method public final getMultiGift()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    return-object v0
.end method

.method public final getOneGift()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->oneGift:Ljava/util/List;

    return-object v0
.end method

.method public final getUnGetGift()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->unGetGift:Ljava/util/List;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->allLL:Landroid/widget/LinearLayout;

    const-string p1, "viewBinding.allLL"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/guochao/component/mvp/fragment/n;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/n;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->closeIV:Landroid/widget/ImageView;

    const-string p1, "viewBinding.closeIV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/o;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/o;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->okTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.okTV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/m;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/m;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    sget-object v0, Lcom/guochao/component/mvp/fragment/q;->a:Lcom/guochao/component/mvp/fragment/q;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_c

    if-eqz v7, :cond_3

    .line 12
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_c

    if-eqz v7, :cond_4

    .line 13
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    if-ne v8, v2, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_c

    if-eqz v7, :cond_5

    .line 14
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_c

    if-eqz v7, :cond_6

    .line 15
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    if-lez v8, :cond_c

    if-eqz v7, :cond_b

    .line 16
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 17
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/guochao/component/mvp/model/TypeData;

    .line 18
    invoke-virtual {v9}, Lcom/guochao/component/mvp/model/TypeData;->getStatus()Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v1, :cond_9

    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_7

    goto :goto_9

    :cond_a
    move-object v8, p2

    .line 19
    :goto_9
    check-cast v8, Lcom/guochao/component/mvp/model/TypeData;

    goto :goto_a

    :cond_b
    move-object v8, p2

    :goto_a
    if-nez v8, :cond_c

    const/4 v7, 0x1

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_1

    .line 20
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    move-object v5, p2

    .line 21
    :cond_e
    iput-object v5, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->unGetGift:Ljava/util/List;

    if-eqz v5, :cond_12

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v7, :cond_10

    .line 24
    invoke-virtual {v7}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_d

    :cond_10
    const/4 v7, 0x0

    :goto_d
    if-ne v7, v3, :cond_11

    const/4 v7, 0x1

    goto :goto_e

    :cond_11
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_f

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_12
    move-object v0, p2

    :cond_13
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->oneGift:Ljava/util/List;

    .line 25
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v5, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->oneGift:Ljava/util/List;

    if-eqz v5, :cond_17

    .line 28
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_14
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v6, :cond_14

    .line 29
    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_14

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/TypeData;

    if-eqz v8, :cond_14

    .line 30
    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 31
    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v9

    if-eq v9, v2, :cond_15

    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_16

    .line 32
    :cond_15
    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/GiftModel;->getLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/guochao/component/mvp/model/TypeData;->setConfData(Ljava/lang/String;)V

    .line 33
    :cond_16
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 34
    :cond_17
    new-instance v2, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    invoke-direct {v2, p0, v0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/List;)V

    iput-object v2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    .line 35
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->unGetGift:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/guochao/component/mvp/model/GiftModel;

    if-eqz v6, :cond_19

    .line 39
    invoke-virtual {v6}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_11

    :cond_19
    const/4 v6, 0x0

    :goto_11
    if-le v6, v3, :cond_1a

    const/4 v6, 0x1

    goto :goto_12

    :cond_1a
    const/4 v6, 0x0

    :goto_12
    if-eqz v6, :cond_18

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    move-object v2, p2

    .line 40
    :cond_1c
    iput-object v2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    .line 41
    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->viewLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 42
    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    if-eqz v0, :cond_28

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_1d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1d
    check-cast v5, Lcom/guochao/component/mvp/model/GiftModel;

    if-nez v5, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v2, -0x1

    .line 44
    invoke-virtual {v5, v2}, Lcom/guochao/component/mvp/model/GiftModel;->setSelected(I)V

    :goto_14
    if-eqz v5, :cond_1f

    .line 45
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 46
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/guochao/component/mvp/model/TypeData;

    .line 47
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/guochao/component/mvp/model/TypeData;->setType(I)V

    .line 48
    invoke-virtual {v8, v4}, Lcom/guochao/component/mvp/model/TypeData;->setSelected(Z)V

    goto :goto_15

    .line 49
    :cond_1f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2, v4}, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;

    move-result-object v2

    const-string v8, "inflate(layoutInflater, null, false)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_20

    .line 50
    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_16

    :cond_20
    move-object v8, p2

    :goto_16
    if-nez v8, :cond_21

    goto :goto_17

    .line 51
    :cond_21
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v3, :cond_22

    .line 52
    iget-object v8, v2, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->titleTV:Landroid/widget/TextView;

    .line 53
    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_title_something:I

    new-array v10, v3, [Ljava/lang/Object;

    .line 54
    sget v11, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_car:I

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 55
    invoke-virtual {p0, v9, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_22
    :goto_17
    if-nez v8, :cond_23

    goto :goto_18

    .line 56
    :cond_23
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_24

    .line 57
    iget-object v8, v2, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->titleTV:Landroid/widget/TextView;

    .line 58
    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_title_something:I

    new-array v10, v3, [Ljava/lang/Object;

    .line 59
    sget v11, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_shade:I

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 60
    invoke-virtual {p0, v9, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_24
    :goto_18
    if-nez v8, :cond_25

    goto :goto_19

    .line 61
    :cond_25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v1, :cond_26

    .line 62
    iget-object v8, v2, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->titleTV:Landroid/widget/TextView;

    .line 63
    sget v9, Lcom/guochao/component/mvp/R$string;->mvp_gift_select_title_something:I

    new-array v10, v3, [Ljava/lang/Object;

    .line 64
    sget v11, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_avatar:I

    invoke-virtual {p0, v11}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 65
    invoke-virtual {p0, v9, v10}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_26
    :goto_19
    iget-object v8, v2, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v8, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;

    if-eqz v5, :cond_27

    invoke-virtual {v5}, Lcom/guochao/component/mvp/model/GiftModel;->getTypeDataList()Ljava/util/List;

    move-result-object v9

    goto :goto_1a

    :cond_27
    move-object v9, p2

    :goto_1a
    const-string v10, "null cannot be cast to non-null type kotlin.collections.MutableList<com.guochao.component.mvp.model.TypeData>"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;Ljava/util/List;)V

    .line 68
    iget-object v9, v2, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    new-instance v9, Lcom/guochao/component/mvp/fragment/p;

    invoke-direct {v9, v8, v5, p0}, Lcom/guochao/component/mvp/fragment/p;-><init>(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSelectAdapter;Lcom/guochao/component/mvp/model/GiftModel;Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;)V

    invoke-virtual {v8, v9}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lx0/f;)V

    .line 70
    iget-object v5, p1, Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;->viewLL:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/guochao/component/mvp/databinding/ItemOneKeyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v6

    goto/16 :goto_13

    .line 71
    :cond_28
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->checkButton()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public final setCallBack(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setMAdapter(Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mAdapter:Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment$GiftSingleSelectAdapter;

    return-void
.end method

.method public final setMData(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;)V
    .locals 0
    .param p1    # Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->mData:Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    return-void
.end method

.method public final setMultiGift(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->multiGift:Ljava/util/List;

    return-void
.end method

.method public final setOneGift(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->oneGift:Ljava/util/List;

    return-void
.end method

.method public final setUnGetGift(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->unGetGift:Ljava/util/List;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectOneKeyFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentMvpSelectGiftOneKeyBinding;

    return-void
.end method
