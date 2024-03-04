.class public final Lcom/guochao/faceshow/guild/activity/MyLiveActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;
.source "SourceFile"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    name = "\u6211\u7684\u76f4\u64ad\u9996\u9875"
    path = "/guild/myLiveActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/guild/activity/MyLiveActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00162\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u001b\u001a\u00020\u00162\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u0016H\u0014J\u0008\u0010\u001f\u001a\u00020\u0016H\u0002J\u0006\u0010 \u001a\u00020\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00038VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/guild/activity/MyLiveActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;",
        "()V",
        "guildId",
        "",
        "type",
        "",
        "viewBinding",
        "Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;",
        "getViewBinding$annotations",
        "getViewBinding",
        "()Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;)V",
        "viewModel",
        "getViewModel",
        "()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceSate",
        "Landroid/os/Bundle;",
        "onModelUpdate",
        "model",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onRestart",
        "setLiveDataObserve",
        "setOnclickListener",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/guochao/faceshow/guild/activity/MyLiveActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TYPE_DAY:I = 0x0

.field private static final TYPE_MONTH:I = 0x1


# instance fields
.field private guildId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:I

.field public viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->Companion:Lcom/guochao/faceshow/guild/activity/MyLiveActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCBaseMvvmActivity;-><init>()V

    .line 2
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/MyLiveActivity$special$$inlined$lazyViewModel$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity$special$$inlined$lazyViewModel$default$1;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;Lcom/guochao/faceshow/guild/bean/LiveStaticBean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->setLiveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;Lcom/guochao/faceshow/guild/bean/LiveStaticBean;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->setOnclickListener$lambda-14$lambda-12(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->setLiveDataObserve$lambda-11(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->setOnclickListener$lambda-14$lambda-13(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Landroid/view/View;)V

    return-void
.end method

.method private final setLiveDataObserve()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getLiveStaticLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/guild/activity/s0;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/guild/activity/s0;-><init>(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;)V

    invoke-virtual {v1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getContractHistoryLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/guild/activity/r0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/r0;-><init>(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final setLiveDataObserve$lambda-11(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;)V
    .locals 8

    const-class v0, Lcom/guochao/faceshow/guild/activity/ContractActivity;

    const-class v1, Lcom/guochao/faceshow/guild/activity/InputGuildIdActivity;

    const-class v2, Lcom/guochao/faceshow/guild/activity/ContractResultActivity;

    const-string/jumbo v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "guildId"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    if-eqz v5, :cond_2

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 4
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    iput-object v3, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    goto :goto_1

    .line 8
    :cond_3
    iget-object v7, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    const/4 v6, 0x3

    if-eqz v5, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v1

    if-ne v1, v6, :cond_6

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getStatus()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_6

    .line 10
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 12
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "obj"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 15
    :cond_7
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    if-eq v0, v6, :cond_9

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getState()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_8

    goto :goto_0

    .line 16
    :cond_8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 18
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/bean/ContractHistoryBean;->getPeriodDay()I

    move-result p1

    if-gtz p1, :cond_a

    .line 19
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    iput-object v3, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    goto :goto_1

    .line 23
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private static final setLiveDataObserve$lambda-3(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;Lcom/guochao/faceshow/guild/bean/LiveStaticBean;)V
    .locals 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->type:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getInTotalMoney()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->layoutEarnings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveEarnings:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getInTotalMoney()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->layoutEarnings:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDays:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object v4

    invoke-static {v4, v1}, Lva/c;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDaysLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDaysLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getNums()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->watchNumberArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->watchNumber:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getNums()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->watchNumberArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    :goto_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDurationDay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->popularity:Landroid/widget/TextView;

    sget v2, Lcom/guochao/faceshow/guild/R$string;->live_hour:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->watchNumber:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2, v1}, Lva/c;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->watchNumberArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDays:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDurationDay()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p2, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line1:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDaysLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 25
    :cond_4
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->popularity:Landroid/widget/TextView;

    sget p2, Lcom/guochao/faceshow/guild/R$string;->watch_popularity:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    const/4 p1, 0x1

    .line 26
    iput p1, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->type:I

    .line 27
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p1

    iget p0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->type:I

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getStatic(I)V

    goto/16 :goto_9

    .line 28
    :cond_5
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getInTotalMoney()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_6

    .line 29
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveEarningsMonth:Landroid/widget/TextView;

    const-string v0, "--"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 30
    :cond_6
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveEarningsMonth:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getInTotalMoney()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :goto_5
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDurationDay()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 32
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDaysMonth:Landroid/widget/TextView;

    .line 33
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDurationDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v1}, Lva/c;->b(Ljava/lang/Integer;I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line3:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->layMonthDatas:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6

    .line 37
    :cond_7
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line3:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->layMonthDatas:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    :goto_6
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 40
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveMonthTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0, v1}, Lva/c;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line4:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveMonthLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7

    .line 43
    :cond_8
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line4:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveMonthLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    :goto_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDurationDay()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 46
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDaysMonth:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDurationDay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line3:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->layMonthDatas:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->line4:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveMonthTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/guild/bean/LiveStaticBean;->getDuration()Ljava/lang/Double;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_a
    invoke-virtual {p2}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object p0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveMonthLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    :goto_9
    return-void
.end method

.method private static final setOnclickListener$lambda-14$lambda-12(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lva/b;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    const-string v0, "/app/myLiveVideoActivity"

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    return-void
.end method

.method private static final setOnclickListener$lambda-14$lambda-13(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lva/b;->a(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->checkSignState()V

    return-void
.end method


# virtual methods
.method public final getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object v0

    return-object v0
.end method

.method public getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/guochao/faceshow/guild/R$string;->my_live_broadcast:I

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getPeriodNumLiveData()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->titleBar:Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    iget-object v0, v0, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->gcToolBar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/guochao/lib_base/R$color;->white:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p1, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->titleBar:Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;

    iget-object p1, p1, Lcom/guochao/lib_core/databinding/GcBaseTitleBarBinding;->gcToolBar:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    sget v1, Lcom/guochao/lib_base/R$color;->color_ugc_text_level_1:I

    .line 10
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setStatusBarTextBlack(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->setOnclickListener()V

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->setLiveDataObserve()V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->checkSignState()V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->type:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getStatic(I)V

    const-string p1, "MyLive::"

    const-string v0, "initView"

    .line 19
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

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

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->guildId:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->checkSignState()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->type:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getStatic(I)V

    const-string p1, "MyLive::"

    const-string v0, "onNewIntent"

    .line 7
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "MyLive::"

    const-string v1, "onRestart"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->type:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/guild/viewmodel/MyLiveViewModel;->getStatic(I)V

    return-void
.end method

.method public final setOnclickListener()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->getViewBinding()Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->liveDetail:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/p0;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/guild/activity/p0;-><init>(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, v0, Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;->signing:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/guochao/faceshow/guild/activity/q0;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/guild/activity/q0;-><init>(Lcom/guochao/faceshow/guild/activity/MyLiveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/MyLiveActivity;->viewBinding:Lcom/guochao/faceshow/guild/databinding/ActivityMyLiveBinding;

    return-void
.end method
