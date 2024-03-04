.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;
.source "SourceFile"


# instance fields
.field private c:I

.field callTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

.field private e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/guochao/faceshow/views/g;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field trtcMic:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;-><init>()V

    .line 2
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$f;

    const-wide/32 v2, 0x7fffffff

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;JJ)V

    iput-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)Lcom/guochao/faceshow/views/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->s2()V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m2()V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->i:I

    return p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->i:I

    return p1
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h:I

    return p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h:I

    return p1
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j2()V

    return-void
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e2()V

    return-void
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->l2()V

    return-void
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->p2(J)V

    return-void
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->o2()V

    return-void
.end method

.method private e2()V
    .locals 2

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120915

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    :cond_0
    return-void
.end method

.method public static h2(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v2

    const-string v3, "userData"

    invoke-virtual {v2, v3, p0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "type"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private j2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->d:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/16 v1, 0xfa8

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->i2()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120915

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->g:Z

    return-void
.end method

.method private l2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->n:Z

    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->s(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V

    .line 6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->n:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->g2()V

    :cond_3
    return-void

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->g2()V

    :cond_5
    return-void
.end method

.method private m2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->g2()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->F(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_2
    return-void
.end method

.method private o2()V
    .locals 4

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    const-string v3, "4005"

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method private p2(J)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    return-void
.end method

.method private q2()V
    .locals 3

    const-string v0, "tokens/appoint/ping"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    const-string v2, "matchLogId"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v1, 0xbba

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "matchType"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->A(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    const/16 v2, 0x1388

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->G(ILcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->d:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void
.end method

.method private r2()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "tokens/appoint/hangOnAppoint"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    const-string v2, "matchLogId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_0
    return-void
.end method

.method private s2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->o0()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/trtc/TRTCCloud;->startLocalPreview(ZLcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->n(II)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->q0()Lcom/tencent/rtmp/ui/TXCloudVideoView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/trtc/TRTCCloud;->startRemoteView(Ljava/lang/String;ILcom/tencent/rtmp/ui/TXCloudVideoView;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->g2()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->n:Z

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->h:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_1
    const p1, 0x7f1208f3

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 7
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->n:Z

    return-void
.end method

.method public L0(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->l:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->l:Z

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$g;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public P1()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->P1()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;->setOnBeautyClickListener(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$OnBeautyClickListener;)V

    return-void
.end method

.method public R0(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->c:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->k:Z

    if-nez p1, :cond_2

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->k:Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->w(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->o:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->isCancel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->o:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    return-void
.end method

.method public g2()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->g:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/trtc/DeprecatedTRTCCloud;->muteRemoteVideoStream(Ljava/lang/String;Z)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->invitedList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/trtc/TRTCCloud;->muteRemoteAudio(Ljava/lang/String;Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->d:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->l0()V

    :cond_4
    return-void
.end method

.method public getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e5

    return v0
.end method

.method public i2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->d:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/16 v1, 0xfa9

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/16 v1, 0xfaa

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$h;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "userData"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->p0()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    const-string v2, "type"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->c:I

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->muteLocalAudio(Z)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setAudioRoute(I)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->P1()V

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->M(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->q2()V

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->r2()V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->callTime:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a0ae3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a01e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    const v0, 0x7f0a0aa7

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v0, 0x7f0a0bf3

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a0aa6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 26
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method

.method public j1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f1204b5

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->o:I

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public n2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->d:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->n:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->q2()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->m:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/trtc/TRTCCloud;->muteLocalAudio(Z)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/trtc/TRTCCloud;->getDeviceManager()Lcom/tencent/liteav/device/TXDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/tencent/liteav/device/TXDeviceManager;->switchCamera(Z)I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->e:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 9
    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "16"

    .line 10
    invoke-static {p1, v0, v2, v3, v1}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setAudioRoute(I)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    iput-boolean p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->a:Z

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/VideoCallFragment;->i2()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0bf3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public s1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 0

    return-void
.end method

.method public w1(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
