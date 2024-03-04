.class public final Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\n\u0008\u0000\u0010\u0016*\u0004\u0018\u00010\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0016\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001bH\u0016J\u0008\u0010\u001f\u001a\u00020\u001dH\u0014J\u0008\u0010 \u001a\u00020\u001bH\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u0018H\u0016J\u0008\u0010#\u001a\u00020\u001bH\u0016J\u0008\u0010$\u001a\u00020\u001bH\u0014J\u0018\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00020\u0018H\u0016J\u0008\u0010(\u001a\u00020\u001dH\u0016J$\u0010)\u001a\u00020\u001b2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\u00182\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0017R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u00060"
    }
    d2 = {
        "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;",
        "()V",
        "modeChangeListener",
        "Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;",
        "getModeChangeListener",
        "()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;",
        "setModeChangeListener",
        "(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;)V",
        "parentFragment",
        "Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;",
        "getParentFragment",
        "()Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;",
        "setParentFragment",
        "(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V",
        "realView",
        "Landroid/view/View;",
        "getRealView",
        "()Landroid/view/View;",
        "setRealView",
        "(Landroid/view/View;)V",
        "findViewById",
        "T",
        "id",
        "",
        "(I)Landroid/view/View;",
        "initChatControl",
        "",
        "showToast",
        "",
        "initView",
        "listenKeyboard",
        "onBackPressed",
        "onChatInputModeChanged",
        "mode",
        "onContentChanged",
        "onDestroy",
        "onKeyboardHeightChanged",
        "height",
        "orientation",
        "shouldShowLiveFloatWindow",
        "startActivityForResult",
        "intent",
        "Landroid/content/Intent;",
        "requestCode",
        "options",
        "Landroid/os/Bundle;",
        "InputModeChangeListener",
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
.field private modeChangeListener:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parentFragment:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private realView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const v1, 0x1020002

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->realView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 3
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->realView:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final getModeChangeListener()Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->modeChangeListener:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;

    return-object v0
.end method

.method public final getParentFragment()Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->parentFragment:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    return-object v0
.end method

.method public final getRealView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->realView:Landroid/view/View;

    return-object v0
.end method

.method public initChatControl(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->initChatControl(Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->parentFragment:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;->mChatStatusBean:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;->refreshStatus(Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;)V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->initView()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0ae4

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a0517

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f06038c

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v1, 0x7f0a01e2

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06011f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    return-void
.end method

.method protected listenKeyboard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onChatInputModeChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onChatInputModeChanged(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->modeChangeListener:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;->onInputModeChange(I)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onContentChanged()V

    const v0, 0x7f0a0255

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->realView:Landroid/view/View;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->parentFragment:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSelectGift(ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p5}, Lu8/a;->a(Lu8/b;ILcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSelectGift(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lu8/a;->c(Lu8/b;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;IZILcom/guochao/faceshow/gift/SendGiftCallBack;)V

    return-void
.end method

.method public final setModeChangeListener(Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->modeChangeListener:Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity$InputModeChangeListener;

    return-void
.end method

.method public final setParentFragment(Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->parentFragment:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    return-void
.end method

.method public final setRealView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->realView:Landroid/view/View;

    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/activity/FakeLiveChatActivity;->parentFragment:Lcom/guochao/faceshow/component/live/fragment/LiveIMChatFloatFragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
