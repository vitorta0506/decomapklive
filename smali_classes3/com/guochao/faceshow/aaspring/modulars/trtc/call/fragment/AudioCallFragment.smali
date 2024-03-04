.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;
.source "SourceFile"


# instance fields
.field bgBlurImage:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field blurImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:I

.field callTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

.field private e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field private f:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lcom/guochao/faceshow/views/g;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field trtcMic:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field trtcSwitchCamera:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userCenterAgeLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;-><init>()V

    .line 2
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$a;

    const-wide/32 v2, 0x7fffffff

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;JJ)V

    iput-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/views/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->m2()V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->o2()V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->i:I

    return p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->i:I

    return p1
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h:I

    return p0
.end method

.method static synthetic Y1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h:I

    return p1
.end method

.method static synthetic Z1(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j2()V

    return-void
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e2()V

    return-void
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->l2()V

    return-void
.end method

.method static synthetic c2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->q2(J)V

    return-void
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    return-object p0
.end method

.method private e2()V
    .locals 2

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120915

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    :cond_0
    return-void
.end method

.method public static h2(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;I)Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;-><init>()V

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->f:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/16 v1, 0xfa8

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupType:I

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->i2()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120915

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g:Z

    return-void
.end method

.method private l2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->l:Z

    invoke-virtual {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->s(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Z)V

    .line 6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->l:Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g2()V

    :cond_3
    return-void

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g2()V

    :cond_5
    return-void
.end method

.method private m2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

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
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g2()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    if-nez v1, :cond_1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->F(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_2
    return-void
.end method

.method private o2()V
    .locals 4

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    const-string v3, "4005"

    invoke-virtual {v0, v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method private p2(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0bf3

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0f05f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0bf4

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0804ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0bf7

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0804ae

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0bf5

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0f05f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private q2(J)V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    long-to-double p1, p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    return-void
.end method

.method private r2()V
    .locals 3

    const-string v0, "tokens/appoint/ping"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    const-string v2, "matchLogId"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "streamId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v1, 0xbb9

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "matchType"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->A(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    const/16 v2, 0x1388

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->G(ILcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->f:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-void
.end method

.method private s2()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "tokens/appoint/hangOnAppoint"

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchLogId:Ljava/lang/String;

    const-string v3, "matchLogId"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->roomId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "streamId"

    invoke-virtual {v0, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :cond_0
    return-void
.end method


# virtual methods
.method public I(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->equals(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g2()V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->l:Z

    if-nez p1, :cond_2

    .line 4
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->h:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput p1, p3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callTime:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->hangupTime:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->H(Ljava/lang/String;IILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_2
    const p1, 0x7f1208f3

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 8
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->l:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public f2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->isCancel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->n:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    return-void
.end method

.method public g2()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->g:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->f:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->l0()V

    :cond_3
    return-void
.end method

.method public getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d015d

    return v0
.end method

.method public i2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->f:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/16 v1, 0xfa9

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    const/16 v1, 0xfaa

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->m(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_8

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

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

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

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->c:I

    const/4 v0, 0x0

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https://mp4.facecast.xyz/storage1/M02/7D/DF/aPODCl-P9NWAO6qXAABpdbMquME412.png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 11
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http://mp4.gchao.com/group2/M00/00/DB/a6cmOF-JmV-ABG-AAABpdbMquME365.png"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "#90000000"

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->bgBlurImage:Landroid/view/View;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->blurImage:Landroid/widget/ImageView;

    const v4, 0x7f0f05eb

    new-instance v5, Ljc/f;

    const/16 v6, 0x19

    const/4 v7, 0x2

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v6, v7, v3}, Ljc/f;-><init>(III)V

    invoke-static {v1, v0, v4, v5}, Lhc/a;->i(Landroid/widget/ImageView;Ljava/lang/Object;ILe0/h;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userAvatarView:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->userCenterAgeLevel:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 19
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b()V

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcSwitchCamera:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/BaseCallFragment;->P1()V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->muteLocalAudio(Z)V

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setAudioRoute(I)V

    .line 27
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 29
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->M(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 31
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->r2()V

    .line 32
    :cond_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->s2()V

    .line 33
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->p2(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->callTime:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a0ae3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->scrollLayout:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    const v1, 0x7f0a01e1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d(Landroid/view/View;)V

    const v0, 0x7f0a0bf3

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void

    .line 38
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_1
    return-void
.end method

.method public k2()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->n:I

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public n2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->f:Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->a()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d;->d(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/d$a;)V

    return-void
.end method

.method public o(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->l:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->j:Lcom/guochao/faceshow/views/g;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->trtcMic:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->a:Z

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->r2()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
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

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/trtc/TRTCCloud;->muteLocalAudio(Z)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->d:Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;

    .line 7
    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "16"

    .line 8
    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->p()Lcom/tencent/trtc/TRTCCloud;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/trtc/TRTCCloud;->setAudioRoute(I)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    iput-boolean p1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;->a:Z

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->i2()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0bf3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public w1(Ljava/lang/String;Z)V
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
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->c:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->m:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->m:Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/fragment/AudioCallFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->w(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_2
    :goto_0
    return-void
.end method
