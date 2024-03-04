.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0014J\u0012\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "()V",
        "mActivityUnreadView",
        "Landroid/widget/TextView;",
        "getMActivityUnreadView",
        "()Landroid/widget/TextView;",
        "setMActivityUnreadView",
        "(Landroid/widget/TextView;)V",
        "viewModel",
        "Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "calNotificationNumber",
        "",
        "conversationModel",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "getLayoutId",
        "",
        "initView",
        "view",
        "Landroid/view/View;",
        "loadData",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# instance fields
.field private mActivityUnreadView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment$special$$inlined$lazyGlobalViewModel$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment$special$$inlined$lazyGlobalViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->onActivityCreated$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method

.method private final calNotificationNumber(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$ConversationListModel;->getUnread()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "99+"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lii/b;->a(Landroid/content/Context;I)Z

    :cond_2
    return-void
.end method

.method private final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    return-object v0
.end method

.method private static final onActivityCreated$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->calNotificationNumber(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getMActivityUnreadView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a007d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->getViewModel()Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ConversationViewModel;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/p;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final setMActivityUnreadView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/TIMMessageHelperFragment;->mActivityUnreadView:Landroid/widget/TextView;

    return-void
.end method
