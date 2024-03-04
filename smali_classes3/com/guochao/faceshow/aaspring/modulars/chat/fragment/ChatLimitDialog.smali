.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0014J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002J\u0012\u0010\u001d\u001a\u00020\u00112\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u0011H\u0002J\u0008\u0010 \u001a\u00020\u0011H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;",
        "()V",
        "dialogTitleView",
        "Landroid/widget/TextView;",
        "mData",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
        "getMData",
        "()Ljava/util/List;",
        "setMData",
        "(Ljava/util/List;)V",
        "mNormalFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;",
        "mVipFragment",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;",
        "dismissSelf",
        "",
        "getLayoutId",
        "",
        "initView",
        "view",
        "Landroid/view/View;",
        "loadData",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "refreshChildData",
        "resetText",
        "textView",
        "sendGiftToChat",
        "showChargeDialog",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private dialogTitleView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVipFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->initView$lambda-4(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->initView$lambda-3(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->initView$lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$dismissSelf(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->dismissSelf()V

    return-void
.end method

.method public static final synthetic access$getMNormalFragment$p(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    return-object p0
.end method

.method public static final synthetic access$refreshChildData(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->refreshChildData()V

    return-void
.end method

.method public static final synthetic access$showChargeDialog(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->showChargeDialog()V

    return-void
.end method

.method private final dismissSelf()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 4
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 10
    instance-of v2, v1, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    if-eqz v2, :cond_2

    .line 11
    check-cast v1, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static final initView$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->dismissSelf()V

    return-void
.end method

.method private static final initView$lambda-2$lambda-1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->sendGiftToChat()V

    return-void
.end method

.method private static final initView$lambda-3(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 5

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    const/high16 p3, 0x40a00000    # 5.0f

    .line 3
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 5
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x40e00000    # 7.0f

    .line 6
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    .line 7
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    const/high16 v0, 0x41100000    # 9.0f

    .line 9
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 10
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    .line 11
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 12
    invoke-virtual {p1, p0, v0, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    :cond_1
    iget-object p0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    if-nez p0, :cond_2

    .line 14
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;-><init>()V

    iput-object p0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    .line 15
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f0a0440

    .line 16
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private static final initView$lambda-4(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Landroid/view/View;)V
    .locals 5

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    const/4 p3, 0x1

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    const/high16 p3, 0x40e00000    # 7.0f

    const/high16 v0, 0x40a00000    # 5.0f

    if-eqz p0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    .line 5
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 6
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    .line 7
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    const/high16 v1, 0x41a00000    # 20.0f

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 10
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 11
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    .line 12
    invoke-virtual {p1, p0, v1, v0, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    iget-object p0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mVipFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;

    if-nez p0, :cond_2

    .line 14
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;-><init>()V

    iput-object p0, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mVipFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;

    .line 15
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x7f0a0440

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mVipFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private final refreshChildData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;->setCurData()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mVipFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;->setCurData()V

    :cond_1
    return-void
.end method

.method private final resetText(Landroid/widget/TextView;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f01c8

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{icon} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120178

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 7
    new-instance v4, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    .line 8
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v4, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 10
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v1, v1

    mul-float v1, v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    float-to-int v3, v4

    .line 11
    invoke-virtual {v0, v5, v5, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    new-instance v1, Lcom/guochao/faceshow/views/r;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "spannableStringBuilder.toString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "{icon}"

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v3, v0, 0x6

    .line 14
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_3

    const/16 v4, 0x11

    .line 15
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    if-nez p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private final sendGiftToChat()V
    .locals 12

    .line 1
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 2
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 3
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.activity.ChatActivity"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.guochao.faceshow.component.live.fragment.LiveIMChatFloatFragment"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getChatActivity()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserId:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->getChatActivity()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatUserName:Ljava/lang/String;

    :cond_2
    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mNormalFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMSelectItem()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mVipFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitVipFragment;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMSelectItem()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    :cond_5
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    new-instance v4, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;-><init>()V

    const/16 v0, 0xa3

    .line 18
    invoke-virtual {v4, v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->setSourctTypeId(I)V

    .line 19
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 20
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 21
    new-instance v11, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;

    move-object v0, v11

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$sendGiftToChat$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v7, p0

    .line 22
    invoke-virtual/range {v6 .. v11}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    const v0, 0x7f12017d

    .line 23
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    return-void
.end method

.method public static final show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$Companion;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private final showChargeDialog()V
    .locals 4

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Companion:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "childFragmentManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog$Companion;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0118

    return v0
.end method

.method public final getMData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mData:Ljava/util/List;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x7f0a02be

    .line 1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->dialogTitleView:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getRiskLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->dialogTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v2, 0x7f120180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->dialogTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const v2, 0x7f12017f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    const v1, 0x7f0a01e6

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/d;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p1, :cond_5

    const v2, 0x7f0a01e7

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    .line 7
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 8
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v4

    const/high16 v5, 0x427c0000    # 63.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v3, v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    const/4 v3, 0x2

    const/high16 v4, 0x41300000    # 11.0f

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 13
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 15
    :goto_2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p1, :cond_6

    const v1, 0x7f0a0b22

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    if-eqz p1, :cond_7

    const v0, 0x7f0a0b24

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 18
    :cond_7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->resetText(Landroid/widget/TextView;)V

    if-eqz v1, :cond_8

    .line 19
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/c;

    invoke-direct {p1, v1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/c;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 20
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;

    invoke-direct {p1, v1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/b;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 21
    invoke-virtual {v1}, Landroid/widget/TextView;->performClick()Z

    :cond_a
    return-void
.end method

.method protected loadData()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$loadData$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$loadData$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    const/16 v2, 0xf

    .line 3
    invoke-virtual {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$onCreateDialog$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog$onCreateDialog$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public final setMData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->mData:Ljava/util/List;

    return-void
.end method
