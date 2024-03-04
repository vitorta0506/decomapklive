.class public Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;
.super Lcom/guochao/faceshow/base/ChatImplBaseAct;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/manager/im/d$a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

.field private e:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

.field private f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

.field private g:I

.field h:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/base/ChatImplBaseAct;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->i:Z

    return-void
.end method

.method public static A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p1, Lcom/guochao/faceshow/web/WebViewActivity$e;

    invoke-direct {p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;-><init>()V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/EventNotifyActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "identify"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "msgType"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->t0(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->v0(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->u0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->p0(II)V

    return-void
.end method

.method static synthetic o0(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;ZLjava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->q0(ZLjava/io/File;)V

    return-void
.end method

.method private p0(II)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c(IIZ)V

    return-void
.end method

.method private q0(ZLjava/io/File;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const v1, 0x7f12016e

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 4
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez p1, :cond_1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xa00000

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const p2, 0x7f12016f

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->y0(Ljava/lang/String;II)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method private r0()V
    .locals 2

    const-string/jumbo v0, "tokens/assistant/getMultiFagTypes"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$g;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private s0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->GET_OFFICIAL_LAST_MSG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$k;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private t0(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "tokens/user/message/findActiveMessage"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "tokens/assistant/msgs/v2"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "lastMsgId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$h;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Z)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private u0(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->p0(II)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object v0, Lf7/b;->j0:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "imgFile"

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->R(Ljava/lang/String;Ljava/io/File;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "flag"

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$j;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;I)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private v0(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->p0(II)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    const-string/jumbo v1, "text"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/utils/Contants;->SEND_OFFICIAL_MSG_TEXT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$i;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;I)V

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private y0(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, p2, p3, v0}, Lfb/a;->a(Ljava/lang/String;IIZ)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-virtual {p3, p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->b(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-virtual {p3}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 p2, -0x1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->u0(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d042e

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "path"

    const/4 v1, -0x1

    const/16 v2, 0x3ea

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_0

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/guochao/faceshow/activity/ImagePreviewActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, p2, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_3

    if-ne p2, v1, :cond_3

    const/4 p1, 0x0

    const-string p2, "isOri"

    .line 6
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 7
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    if-nez p2, :cond_1

    return-void

    .line 8
    :cond_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p3, v0, :cond_2

    .line 9
    invoke-static {p2}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p3

    new-instance v0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$b;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$b;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Landroid/net/Uri;)V

    invoke-virtual {p3, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p2

    .line 10
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$a;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;Z)V

    invoke-virtual {p2, p3}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/guochao/faceshow/utils/FileUtil;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p3}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->q0(ZLjava/io/File;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$c;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->setListener(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->h:Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/utils/SoftKeyBoardListener;->mDelay:Z

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "identify"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "msgType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->g:I

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->x(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    iget v2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;-><init>(Lcom/guochao/faceshow/aaspring/utils/ChatView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->e:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    const v1, 0x7f0a00d1

    .line 10
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    iput-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const v1, 0x7f0a00c4

    .line 11
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a00c3

    .line 12
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    iput-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    .line 13
    iget v2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->g:I

    if-ne v2, v3, :cond_1

    const/16 v2, 0x8

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/high16 v1, 0x7f120000

    .line 15
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f12002e

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->setChatView(Lcom/guochao/faceshow/aaspring/utils/ChatView;)V

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->e:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->start(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;)V

    .line 20
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v2, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lkc/b;)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBothEnableOverScroll(Z)V

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->f:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    new-instance v1, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$d;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lkc/f;)V

    .line 28
    new-instance v0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    .line 29
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->h(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;)V

    .line 30
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$e;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->i(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;)V

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct$f;-><init>(Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 37
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->r0()V

    const-string p1, ""

    .line 38
    invoke-direct {p0, p1, v3}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->t0(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->G(Lcom/guochao/faceshow/aaspring/manager/im/d$a;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->e:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->stop()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    return-void
.end method

.method public synthetic onRecvMessageRevoked(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, La8/b;->a(Lcom/guochao/faceshow/aaspring/manager/im/d$a;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    sget-object v1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;->TEXT:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->setInputMode(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->getTextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->e:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->getTextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->saveDraft(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->e:Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ChatPresenter;->saveDraft(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public scrollToEnd(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-virtual {p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->getItemCount()I

    move-result p2

    if-lez p2, :cond_3

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public sendImage()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public sendText()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->getTextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lfb/a;->b(Ljava/lang/String;Z)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->b(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f()V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->d:Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;

    invoke-virtual {v3}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/4 v1, -0x1

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->v0(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    :cond_0
    return-void
.end method

.method public showDraft(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->a:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public showMessage(Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->s0()V

    return-void
.end method
