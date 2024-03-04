.class public final Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0012\u0010\u001e\u001a\u00020\u001d2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\u001dH\u0002J\"\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0012\u0010(\u001a\u00020\u001d2\u0008\u0010)\u001a\u0004\u0018\u00010\u0002H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0004\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;",
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
        "Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;",
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

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

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

    new-instance v1, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContractHistoryBean$p(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    return-object p0
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->initView$lambda-2(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->liveDataObserve$lambda-5(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->liveDataObserve$lambda-4(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/util/ArrayList;)V

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->addAddPicButton()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    sget v1, Lcom/guochao/faceshow/guild/R$layout;->guild_upload_picture_item:I

    .line 4
    new-instance v2, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initPictureAdapter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initPictureAdapter$1;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/util/ArrayList;I)V

    iput-object v2, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->pictureList:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->getMAX_PICATURE()I

    move-result v2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->pictureList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private static final initView$lambda-2(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Landroid/view/View;)V
    .locals 10

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->editReason:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "getString(R.string.dismissed_edit_toast_tips)"

    if-eqz v2, :cond_2

    .line 3
    sget p1, Lcom/guochao/faceshow/guild/R$string;->dismissed_edit_toast_tips:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x5

    if-ge p1, v2, :cond_3

    .line 5
    sget p1, Lcom/guochao/faceshow/guild/R$string;->dismissed_edit_toast_tips:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_3

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result p1

    if-ne p1, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_7

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->editReason:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v2

    .line 10
    :goto_2
    iget-object v3, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getRecordId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 11
    :cond_6
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_3

    .line 12
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getDialog()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "cancellation"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final liveDataObserve()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/t;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/t;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->getApplyResultLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/s;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/s;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final liveDataObserve$lambda-4(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->pictureAdapter:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->setData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static final liveDataObserve$lambda-5(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;Ljava/lang/Integer;)V
    .locals 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

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

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget p1, Lcom/guochao/faceshow/guild/R$string;->dismissed_fail:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.dismissed_fail)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    :goto_1
    return-void
.end method


# virtual methods
.method public final getDialog()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->dialog:Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$string;->terminate_contract:I

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
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v1, :cond_3

    .line 5
    new-instance v2, Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;-><init>(Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->setDialog(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;)V

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignType()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->editReason:Landroid/widget/EditText;

    sget v1, Lcom/guochao/faceshow/guild/R$string;->edit_terminate_contract_reason_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 8
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->periodOfCalmingDown:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v2, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->guildInformagtionLayout:Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object v2, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->guildId:Landroid/widget/TextView;

    .line 11
    sget v6, Lcom/guochao/faceshow/guild/R$string;->guild_id_tips:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getGuildId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->guildName:Landroid/widget/TextView;

    sget v6, Lcom/guochao/faceshow/guild/R$string;->guild_name_tips:I

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->guildTime:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->guildTime:Landroid/widget/TextView;

    .line 16
    sget v2, Lcom/guochao/faceshow/guild/R$string;->time2:I

    new-array v6, v4, [Ljava/lang/Object;

    .line 17
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy-MM-dd HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->contractHistoryBean:Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getSignTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 18
    invoke-virtual {p0, v2, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "guild_expire_day"

    .line 19
    invoke-static {v0, v5}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 20
    iget-object v1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->periodOfCalmingDown:Landroid/widget/TextView;

    .line 21
    sget v2, Lcom/guochao/faceshow/guild/R$string;->guild_rescind_request_tip:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->periodOfCalmingDown:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getDialog()Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity$initView$2;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;->setMOnMenuClickListener(Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog$OnMenuClickListener;)V

    .line 25
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;->confrim:Landroid/widget/Button;

    new-instance v0, Lcom/guochao/faceshow/guild/activity/r;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/guild/activity/r;-><init>(Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->initPictureAdapter()V

    .line 27
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->liveDataObserve()V

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->getPICTURE()I

    move-result p2

    if-ne p1, p2, :cond_2

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->addPicture(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ApplyTerminationViewModel;->addAddPicButton()V

    :cond_2
    :goto_1
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

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->dialog:Lcom/guochao/faceshow/guild/view/ConfirmCancellationDialog;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ApplyTerminationActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityApplyTerminationBinding;

    return-void
.end method
