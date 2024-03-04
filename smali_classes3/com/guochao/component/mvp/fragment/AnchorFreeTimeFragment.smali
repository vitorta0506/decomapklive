.class public final Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;
.super Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0012\u0010\u001f\u001a\u00020\u00062\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;",
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
        "viewBinding",
        "Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;",
        "setViewBinding",
        "(Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;)V",
        "viewModel",
        "Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "getViewModel",
        "()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "createCenterDialog",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "Companion",
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
.field public static final Companion:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callBack:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->Companion:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/FullWidthCenterFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Lcom/guochao/component/mvp/model/UserModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->initView$lambda-3(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Lcom/guochao/component/mvp/model/UserModel;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->initView$lambda-0(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->initView$lambda-2(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;)Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "mvpLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v2, 0x1

    .line 2
    :goto_0
    new-instance p1, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;

    const/4 v1, 0x6

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->idET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object v0

    new-instance v1, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$initView$3$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$initView$3$1;-><init>(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, p1, v1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->setFreeTime(Lcom/guochao/component/mvp/model/GetInterestsRequestModel;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;Lcom/guochao/component/mvp/model/UserModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/UserModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->nameTV:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->nameTV:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/UserModel;->getNickName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/component/mvp/model/UserModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/bumptech/glide/request/h;->y0()Lcom/bumptech/glide/request/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->y0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/g;

    move-result-object p1

    .line 6
    sget v0, Lcom/guochao/component/mvp/R$drawable;->ic_mvp_setting_def_header:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->avatarIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->nameTV:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->nameTV:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->avatarIV:Landroid/widget/ImageView;

    sget p1, Lcom/guochao/component/mvp/R$drawable;->ic_mvp_setting_def_header:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public static final newInstance(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->Companion:Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$Companion;->newInstance(Ljava/lang/Integer;)Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object v0

    return-object v0
.end method

.method public final getCallBack()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
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
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->closeIV:Landroid/widget/ImageView;

    const-string p1, "viewBinding.closeIV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/a;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/a;-><init>(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->idET:Landroid/widget/EditText;

    const-string p2, "viewBinding.idET"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p2, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {p2, p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewBinding()Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;->okTV:Landroid/widget/TextView;

    const-string p1, "viewBinding.okTV"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/mvp/fragment/b;

    invoke-direct {v3, p0}, Lcom/guochao/component/mvp/fragment/b;-><init>(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->getViewModel()Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/component/mvp/viewmodel/MVPUserInfoViewModel;->getUserModel()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/guochao/component/mvp/fragment/c;

    invoke-direct {v0, p0}, Lcom/guochao/component/mvp/fragment/c;-><init>(Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

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
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->callBack:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/AnchorFreeTimeFragment;->viewBinding:Lcom/guochao/component/mvp/databinding/FragmentAnchorFreeTimeBinding;

    return-void
.end method
