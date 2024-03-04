.class public final Lcom/guochao/faceshow/guild/activity/ComplaintActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\u001dH\u0002J\"\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0012\u0010(\u001a\u00020\u001d2\u0008\u0010)\u001a\u0004\u0018\u00010\u0002H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/ComplaintActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;",
        "()V",
        "contractHistoryBean",
        "Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;",
        "dialog",
        "Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;",
        "getDialog",
        "()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;",
        "setDialog",
        "(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;)V",
        "pictureAdapter",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "viewBinding",
        "Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initPictureAdapter",
        "",
        "initView",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "liveDataObserve",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onModelUpdate",
        "model",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public dialog:Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

.field private pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContractHistoryBean$p(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    return-object p0
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->liveDataObserve$lambda-4(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->liveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->initView$lambda-1(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private final initPictureAdapter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->addAddPicButton()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    sget v1, Lcom/guochao/faceshow/guild/R$layout;->guild_upload_picture_item:I

    .line 4
    new-instance v2, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->pictureList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getMAX_PICATURE()I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->pictureList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final initView$lambda-1(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Landroid/view/View;)V
    .locals 8

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->editReason:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "getString(R.string.complaint_edit_toast_tips)"

    if-eqz v0, :cond_0

    .line 3
    sget p1, Lcom/guochao/faceshow/guild/R$string;->complaint_edit_toast_tips:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    .line 5
    sget p1, Lcom/guochao/faceshow/guild/R$string;->complaint_edit_toast_tips:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getDialog()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "cancellation"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final liveDataObserve()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/y;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/y;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getApplyResultLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/x;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/x;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final liveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final liveDataObserve$lambda-4(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/lang/Boolean;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/guochao/faceshow/guild/R$string;->feedback_feedback_success:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.feedback_feedback_success)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    const/4 p1, -0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/guochao/faceshow/guild/R$string;->commit_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.commit_fail)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method


# virtual methods
.method public final getDialog()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->dialog:Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewModel()Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$string;->complaint:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "obj"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz p1, :cond_3

    .line 3
    new-instance v1, Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;-><init>(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->setDialog(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->guildTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->guildInformagtionLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->guildId:Landroid/widget/TextView;

    .line 8
    sget v4, Lcom/guochao/faceshow/guild/R$string;->guild_id_tips:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getGuildId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->guildName:Landroid/widget/TextView;

    sget v4, Lcom/guochao/faceshow/guild/R$string;->guild_name_tips:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->guildTime:Landroid/widget/TextView;

    sget v1, Lcom/guochao/faceshow/guild/R$string;->time2:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 13
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getDialog()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initView$1$1;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;->setMOnMenuClickListener(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog$OnMenuClickListener;)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;->confrim:Landroid/widget/Button;

    new-instance v0, Lcom/guochao/faceshow/guild/activity/w;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/activity/w;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->initPictureAdapter()V

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->liveDataObserve()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getPICTURE()I

    move-result p2

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "media"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->addPicture(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onModelUpdate(Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setDialog(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->dialog:Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityComplaintBinding;

    return-void
.end method
