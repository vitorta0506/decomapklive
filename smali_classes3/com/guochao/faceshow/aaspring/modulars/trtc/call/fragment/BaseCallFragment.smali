.class public abstract Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;
.implements Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;


# instance fields
.field a:Lj8/a;

.field animView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

.field mViewChatArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewWidget:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public A1(I)V
    .locals 0

    return-void
.end method

.method public E1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public synthetic L0(Ljava/lang/String;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lx9/a;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;Ljava/lang/String;III)V

    return-void
.end method

.method public O0(Ljava/lang/String;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public P1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;

    .line 2
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;->getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    instance-of v3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$Companion;->instance(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    const v2, 0x7f0a01e1

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public R(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public R0(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public f1(J)V
    .locals 0

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    const v0, 0x7f0a0ae3

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->a:Lj8/a;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lj8/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->animView:Landroid/widget/FrameLayout;

    const/16 v2, 0xd

    invoke-direct {p1, v0, v1, v2}, Lj8/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->a:Lj8/a;

    :cond_1
    return-void
.end method

.method public j1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public n1(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->a:Lj8/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lj8/a;->g()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    return-void
.end method

.method public onKeyboardHeightChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->onKeyboardHeightChanged(II)V

    :cond_0
    return-void
.end method

.method public synthetic onKeyboardHeightChanged(III)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/e;->a(Lcom/guochao/faceshow/aaspring/utils/KeyboardHeightObserver;III)V

    return-void
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;->getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;

    .line 4
    invoke-interface {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;->getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getPreferentialLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setOtherLanguage(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->addMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TrtcTextMessage;)V

    return-void

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->isTrtcGift()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V

    :cond_2
    return-void
.end method

.method public synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method public playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->a:Lj8/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object p1

    iget p1, p1, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->gift_id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj8/a;->f(Ljava/lang/Integer;)V

    return-void
.end method

.method public s1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public v1(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public w1(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
