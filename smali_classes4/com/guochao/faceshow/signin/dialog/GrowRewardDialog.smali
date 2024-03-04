.class public final Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J\u001a\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0012\u0010 \u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0012\u0010!\u001a\u00020\"2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010#\u001a\u00020\u001aH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R+\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0002\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;",
        "()V",
        "taskBean",
        "Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "getTaskBean",
        "()Lcom/guochao/faceshow/signin/bean/GrowTaskBean;",
        "setTaskBean",
        "(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V",
        "<set-?>",
        "",
        "type",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "viewBinding",
        "Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;)V",
        "getTaskList",
        "",
        "initView",
        "root",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreate",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "refreshRecyclerView",
        "Companion",
        "lib_sign_in_release"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private taskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type$delegate:Lkotlin/properties/ReadWriteProperty;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    const-string/jumbo v3, "type"

    const-string v4, "getType()I"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    .line 2
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->type$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->initView$lambda-0(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$refreshRecyclerView(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->refreshRecyclerView()V

    return-void
.end method

.method private final getTaskList()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$getTaskList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$getTaskList$1;-><init>(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private final refreshRecyclerView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;->rewardContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;->rewardContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$refreshRecyclerView$1;-><init>(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static final showDialog(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->Companion:Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/signin/bean/GrowTaskBean;)Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getTaskBean()Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->taskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    return-object v0
.end method

.method public final getType()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->type$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

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

    const-string p2, "root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->setType(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "GrowTaskBean"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->taskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    if-nez p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getTaskList()V

    goto :goto_1

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->refreshRecyclerView()V

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;->ivTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getType()I

    move-result p2

    if-nez p2, :cond_3

    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_grow_gift_bag:I

    goto :goto_2

    :cond_3
    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_task_reward:I

    :goto_2
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;->startSignin:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getType()I

    move-result p2

    if-nez p2, :cond_4

    sget p2, Lcom/guochao/faceshow/signin/R$string;->signin_goto_do_task:I

    goto :goto_3

    :cond_4
    sget p2, Lcom/guochao/faceshow/signin/R$string;->lottery_i_know:I

    :goto_3
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;->startSignin:Landroid/widget/TextView;

    new-instance p2, Lcom/guochao/faceshow/signin/dialog/a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/dialog/a;-><init>(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->getViewBinding()Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;->ivClose:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/signin/dialog/b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/signin/dialog/b;-><init>(Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createCenterDialog()Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-object p1
.end method

.method public final setTaskBean(Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/signin/bean/GrowTaskBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->taskBean:Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    return-void
.end method

.method public final setType(I)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->type$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/GrowRewardDialog;->viewBinding:Lcom/guochao/faceshow/signin/databinding/DialogGrowRewardBinding;

    return-void
.end method
