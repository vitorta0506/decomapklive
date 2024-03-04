.class public final Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;,
        Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001e2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J\u0012\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0017J\u0012\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "currentSelect",
        "",
        "isDialog",
        "",
        "()Z",
        "result",
        "Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;)V",
        "initView",
        "",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityCreated",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onDestroyView",
        "AccountAdapter",
        "AccountViewHolder",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private currentSelect:I

.field private result:Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->initView$lambda-7$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->initView$lambda-7$lambda-6(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getCurrentSelect$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->currentSelect:I

    return p0
.end method

.method public static final synthetic access$getResult$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->result:Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    return-object p0
.end method

.method public static final synthetic access$setCurrentSelect$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->currentSelect:I

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-7$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-7$lambda-6(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    .line 2
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->result:Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->setReg(I)V

    .line 5
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUserInfoList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->currentSelect:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->setUser(Lcom/guochao/faceshow/bean/UserBean;)V

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 7
    :goto_0
    invoke-virtual {p1, v2, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->H(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static final newInstance(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;
    .locals 1
    .param p0    # Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$Companion;->newInstance(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;

    move-result-object p1

    .line 3
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;->cancel:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;->confirm:Landroid/widget/TextView;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isDialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x7f06038c

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "data"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    if-eqz p1, :cond_3

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->result:Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUserInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "userInfoList"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v6, Lcom/guochao/faceshow/bean/UserBean;

    .line 8
    invoke-virtual {v6}, Lcom/guochao/faceshow/bean/UserBean;->getLastTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v2

    :goto_1
    cmp-long v6, v8, v4

    if-lez v6, :cond_2

    .line 9
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->currentSelect:I

    move-wide v4, v8

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.login.activity.BaseLoginActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->A(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V

    :cond_0
    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentMultiAccountChooserBinding;

    return-void
.end method
