.class public Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field addBlack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field private c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

.field cancelSubscribe:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

.field focusDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field groupName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imDisturbToggle:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imStickyToggle:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imTranslateState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field imTrtcState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llTranslate:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llTrtc:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field notFocusDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field report:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchChatRecord:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field sendChatRecord:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field setGroup:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleBack:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTrtc:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userFlag:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userLay:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->d:Z

    return-void
.end method

.method private A0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f120014

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    const v1, 0x7f12069a

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    const v1, 0x7f1208a3

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method public static B0(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "key1"

    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v1, "key2"

    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string p2, "key3"

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private E0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->deletebacklist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->u0()V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->d:Z

    return p1
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->m0()V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->o0(Ljava/lang/String;)V

    return-void
.end method

.method private m0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->BLACL_LIST_ADD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "From_Account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "To_Account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private o0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-static {p1, v0, v1}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private p0(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-static {p1, v0, v1, v2}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setBlackStatus(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setAttentStatus(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->setAutoTransFlag(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private r0()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getBlackStatus()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s0()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private u0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->addBlack:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getBlackStatus()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    const v0, 0x7f120117

    goto :goto_0

    :cond_0
    const v0, 0x7f12098c

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->cancelSubscribe:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f12039f

    goto :goto_2

    :cond_2
    :goto_1
    const v2, 0x7f12000c

    .line 4
    :goto_2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v4, :cond_3

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->setGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->setGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v0

    if-ne v0, v4, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->focusDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->notFocusDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 12
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->focusDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->notFocusDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imStickyToggle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getSilent()I

    move-result v2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTranslateState:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAutoTransFlag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTrtcState:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getMyAttentionAppointAuth()I

    move-result v2

    if-ne v3, v2, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private y0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$k;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;->getAttentStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const v1, 0x7f120474

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    :cond_0
    const v1, 0x7f120013

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    :goto_0
    const v1, 0x7f12069a

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    const v1, 0x7f1208a3

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public F0()V
    .locals 3

    const-string v0, "user/attention/updateAttention"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "disTurbSwitch"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0034

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f12000e

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->llTranslate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->llTranslate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getBindMobileLimit()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->isSouthKorea()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->sendChatRecord:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->sendChatRecord:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public loadData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->q0()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;-><init>()V

    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setAvatar(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setNickName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->setUserId(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->u0()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userAvatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getGender()I

    move-result v2

    invoke-static {v0, v1, v2}, Lhc/a;->e(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userFlag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userFlag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getCountryFlag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0122

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTranslateState:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string v0, "tokens/translate/closeAutoTranslate"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x69

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->groupName:Landroid/widget/TextView;

    const-string p2, "name"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "key1"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->a:Landroid/graphics/Bitmap;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "key2"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-string v1, "key3"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->e:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 6
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->findGroupInfoByFriendId(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->groupName:Landroid/widget/TextView;

    const v0, 0x7f12059a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->groupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 6
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->e:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x69

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 9
    :sswitch_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->getSubStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/ChatRecordUtils;->loadMsg(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 10
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchHistoryListActivity;->m0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    goto/16 :goto_0

    .line 11
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez p1, :cond_1

    return-void

    .line 12
    :cond_1
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 13
    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto/16 :goto_0

    .line 14
    :sswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTrtcState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->v0(I)V

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->v0(I)V

    goto/16 :goto_0

    .line 17
    :sswitch_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTranslateState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->n0()V

    goto/16 :goto_0

    .line 19
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getTransSwitchEnableFlag()I

    move-result p1

    if-eq p1, v2, :cond_4

    return-void

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->t0()V

    goto/16 :goto_0

    :sswitch_7
    const-wide/16 v0, 0x1f4

    .line 21
    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imStickyToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imStickyToggle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setAlwaysTop(I)V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->R0(Z)V

    goto :goto_0

    .line 25
    :sswitch_8
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->d:Z

    if-nez p1, :cond_6

    return-void

    .line 26
    :cond_6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->d:Z

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imDisturbToggle:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->F0()V

    goto :goto_0

    .line 29
    :sswitch_9
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 30
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez p1, :cond_8

    return-void

    .line 31
    :cond_8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->s0()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 32
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->A0()V

    goto :goto_0

    .line 33
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->p0(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :sswitch_a
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->c:Lcom/guochao/faceshow/aaspring/beans/ChatStatusBean;

    if-nez p1, :cond_b

    return-void

    .line 36
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez p1, :cond_c

    return-void

    .line 37
    :cond_c
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->r0()Z

    move-result p1

    if-nez p1, :cond_d

    .line 38
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->y0()V

    goto :goto_0

    .line 39
    :cond_d
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->E0()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0080 -> :sswitch_a
        0x7f0a01b6 -> :sswitch_9
        0x7f0a0513 -> :sswitch_8
        0x7f0a0516 -> :sswitch_7
        0x7f0a0518 -> :sswitch_6
        0x7f0a0519 -> :sswitch_5
        0x7f0a0971 -> :sswitch_4
        0x7f0a0a12 -> :sswitch_3
        0x7f0a0a5c -> :sswitch_2
        0x7f0a0a63 -> :sswitch_1
        0x7f0a0dbd -> :sswitch_0
    .end sparse-switch
.end method

.method public t0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->imTranslateState:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const-string v0, "tokens/translate/openAutoTranslate"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->b:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetUserId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public v0(I)V
    .locals 3

    const-string v0, "tokens/appoint/attentionAppointAuth"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;->e:Ljava/lang/String;

    const-string v2, "accountId"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "attentionAppointAuth"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatDetailActivity;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
