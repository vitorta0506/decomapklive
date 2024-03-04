.class public final Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;
.super Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008+\u0010*J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\u000c\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010R$\u0010\u0013\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010 \u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R(\u0010#\u001a\u00020\"8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008#\u0010$\u0012\u0004\u0008)\u0010*\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006-"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;",
        "Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;",
        "",
        "keyboardShow",
        "",
        "keyboardHeigh",
        "",
        "setViewHeight",
        "Landroid/view/View;",
        "root",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "Ly7/j;",
        "keyboardEvent",
        "onDestroy",
        "Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;",
        "statusBean",
        "refreshStatus",
        "chatView",
        "Landroid/view/View;",
        "getChatView",
        "()Landroid/view/View;",
        "setChatView",
        "(Landroid/view/View;)V",
        "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;",
        "chatActivity",
        "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;",
        "getChatActivity",
        "()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;",
        "setChatActivity",
        "(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;)V",
        "currentMode",
        "I",
        "Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;",
        "viewBinding",
        "Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;",
        "getViewBinding",
        "()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;",
        "setViewBinding",
        "(Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;)V",
        "getViewBinding$annotations",
        "()V",
        "<init>",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chatView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentMode:I

.field public viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->currentMode:I

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->initView$lambda-4$lambda-2(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->initView$lambda-4$lambda-3(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getCurrentMode$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->currentMode:I

    return p0
.end method

.method public static final synthetic access$setCurrentMode$p(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->currentMode:I

    return-void
.end method

.method public static final synthetic access$setViewHeight(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->setViewHeight(ZI)V

    return-void
.end method

.method public static synthetic getViewBinding$annotations()V
    .locals 0
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation

    return-void
.end method

.method private static final initView$lambda-4$lambda-2(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;

    invoke-direct {p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMConversationFloatFragment;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.activity.BaseLiveActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 6
    invoke-static {p1, p0}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->addFloatFragment(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static final initView$lambda-4$lambda-3(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;->getUserId()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3e9

    .line 4
    invoke-static {p1, v1, v0, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->B0(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;I)V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->Companion:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    move-result-object p0

    return-object p0
.end method

.method private final setViewHeight(ZI)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "layoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenRealHeight(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3f666666    # 0.9f

    mul-float v0, v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenRealHeight(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3f333333    # 0.7f

    mul-float v0, v0, v4

    float-to-int v0, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 5
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatView:Landroid/view/View;

    if-eqz v0, :cond_3

    const v2, 0x7f0a0608

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 8
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz p1, :cond_5

    if-lez p2, :cond_5

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_4

    const p2, 0x7f0a01e3

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 11
    :cond_4
    instance-of p1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_5

    .line 12
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const/4 p1, 0x1

    .line 13
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getChatActivity()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    return-object v0
.end method

.method public final getChatView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatView:Landroid/view/View;

    return-object v0
.end method

.method public final getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    invoke-static {p1}, Lcom/guochao/faceshow/component/live/utils/FloatFragmentUtils;->setDefaultFragmentViewHeight(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;->getUserId()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e0(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->N0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    .line 6
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    .line 10
    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "otherLanguage"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object p1

    const-string v1, "chat_activity"

    invoke-virtual {p1, v1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object p1

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseEmbedActivityFragment;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.component.live.activity.FakeLiveChatActivity"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-eqz p2, :cond_1

    .line 19
    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->setParentFragment(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V

    .line 20
    new-instance v1, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment$initView$1$1;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->setModeChangeListener(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;)V

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0255

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_2
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatView:Landroid/view/View;

    .line 25
    iget-object p2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->setRealView(Landroid/view/View;)V

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->setViewHeight(ZI)V

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object p1

    .line 29
    iget-object p2, p1, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->back:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/component/live/fragment/j;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/component/live/fragment/j;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->ivMore:Landroid/widget/ImageView;

    new-instance p2, Lcom/guochao/faceshow/component/live/fragment/k;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/component/live/fragment/k;-><init>(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final keyboardEvent(Ly7/j;)V
    .locals 3
    .param p1    # Ly7/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "keyboardEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->currentMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v2, p1, Ly7/j;->b:I

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget v0, p1, Ly7/j;->b:I

    if-lez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget p1, p1, Ly7/j;->b:I

    if-lez p1, :cond_2

    .line 4
    invoke-direct {p0, v1, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->setViewHeight(ZI)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1, p1}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->setViewHeight(ZI)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardV2(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    iput-object v2, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    return-void
.end method

.method public final refreshStatus(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getOnlineCode()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f05f0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/high16 v2, 0x41200000    # 10.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    invoke-virtual {p1, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->append(Landroid/text/SpannableStringBuilder;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    const-string p1, " "

    .line 6
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->titleName:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;->titleName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/component/live/fragment/BaseChatFragment;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setChatActivity(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatActivity:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    return-void
.end method

.method public final setChatView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->chatView:Landroid/view/View;

    return-void
.end method

.method public final setViewBinding(Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->viewBinding:Lcom/guochao/faceshow/databinding/FragmentLiveIMChatFloatBinding;

    return-void
.end method
