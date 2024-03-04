.class public Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;
.implements Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;
    }
.end annotation


# static fields
.field private static t5:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private A:I

.field B:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

.field private B3:Lcom/guochao/faceshow/views/s;

.field private C:Landroid/widget/LinearLayout;

.field private C4:Lcom/guochao/faceshow/views/ZZRangeSlider;

.field private D:Landroid/widget/ImageView;

.field private D4:Landroid/widget/TextView;

.field private E:Landroid/widget/ImageView;

.field private E4:Landroid/widget/LinearLayout;

.field private F:Landroid/widget/ImageView;

.field private F4:Z

.field private G:Landroid/widget/ImageView;

.field private G4:I

.field private H:Landroid/widget/ImageView;

.field private H4:I

.field private I:Landroid/widget/RelativeLayout;

.field private I4:I

.field private J:Landroid/widget/TextView;

.field private J4:I

.field private K:Landroid/widget/TextView;

.field private K4:I

.field private L:Ljava/lang/String;

.field private L4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private M:I

.field private M4:Ljava/lang/String;

.field private N:Landroid/widget/TextView;

.field private N4:J

.field private O:Lcom/guochao/faceshow/views/RangeSlider;

.field private O4:I

.field private P:Landroid/widget/RelativeLayout;

.field private P4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

.field private Q4:Landroid/widget/ImageView;

.field private R:Landroid/widget/LinearLayout;

.field private R4:Landroid/widget/LinearLayout;

.field private S4:Landroid/widget/LinearLayout;

.field private T4:I

.field private U4:Landroid/widget/TextView;

.field private V1:I

.field private V2:Lcom/guochao/faceshow/views/VideoProgressView;

.field private V3:Lcom/guochao/faceshow/fragment/TCTimeFragment;

.field private V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

.field private W4:Landroid/widget/ImageView;

.field private X4:I

.field private Y4:F

.field private Z4:F

.field private a:Landroid/net/Uri;

.field private a1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private a2:Landroid/graphics/Bitmap;

.field private a5:I

.field private b:Ljava/lang/String;

.field private b5:I

.field private c:I

.field private c5:I

.field private d:Lcom/tencent/ugc/TXVideoEditer;

.field private d5:Landroid/widget/PopupWindow;

.field private e:Z

.field private e5:Landroid/widget/PopupWindow;

.field private f:Landroid/widget/FrameLayout;

.field private f5:Ljava/lang/String;

.field private g:Landroid/widget/ImageView;

.field private g5:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/ImageView;

.field private h5:I

.field private i:I

.field private i5:I

.field private j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

.field private j5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private k5:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field l5:I

.field private m:Ljava/lang/String;

.field private m5:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

.field private n:Ljava/lang/String;

.field private n5:Lcom/guochao/faceshow/views/s$e;

.field private o:Ljava/lang/String;

.field private o5:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

.field private p:Ljava/lang/String;

.field p5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/app/KeyguardManager;

.field q5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private r5:Ljava/lang/Boolean;

.field private s:Lcom/guochao/faceshow/views/l;

.field s5:Landroid/widget/Toast;

.field private t:J

.field private u:J

.field private v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field y:I

.field z:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    .line 5
    new-instance v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$a;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->z:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$m;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1:I

    const/4 v2, 0x1

    .line 8
    iput v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->K4:I

    const-string v3, ""

    .line 9
    iput-object v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M4:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->O4:I

    .line 11
    iput v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->T4:I

    const v1, 0x3f4ccccd    # 0.8f

    .line 12
    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Y4:F

    .line 13
    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Z4:F

    .line 14
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h5:I

    .line 15
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i5:I

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    .line 17
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$r;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$r;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m5:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    .line 18
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$t;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->n5:Lcom/guochao/faceshow/views/s$e;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->p5:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->q5:Ljava/util/ArrayList;

    .line 21
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r5:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditer;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    return-object p0
.end method

.method static synthetic B0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Z4:F

    return p0
.end method

.method private B1(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 11

    const-string v0, "zune"

    const-string v1, "\u5f00\u59cb\u83b7\u53d6\u7f29\u7565\u56fe"

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget-wide v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v5, 0xa

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    :goto_0
    int-to-long v7, v2

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    mul-long v7, v5, v3

    .line 4
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto :goto_0

    .line 5
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 8
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 9
    iget-object v9, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a:Landroid/net/Uri;

    invoke-virtual {v8, p0, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 10
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long v9, v9, v3

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    aput-object v8, v9, v10

    const-string v10, "\u7b2c%s\u5f20\uff0cbitmap = %s"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v8}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v8

    new-instance v9, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$l;

    invoke-direct {v9, p0, v2, v5}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$l;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v8, v9}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v8

    .line 14
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v8

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v8

    new-instance v9, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;

    invoke-direct {v9, p0, v5, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Ljava/util/List;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    .line 15
    invoke-virtual {v8, v9}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic E0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Z4:F

    return p1
.end method

.method static synthetic F0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    return-object p0
.end method

.method private F1()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V3:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V3:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1(I)V

    return-void
.end method

.method static synthetic G0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1(I)V

    return-void
.end method

.method private G1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o5:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o5:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o5:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method static synthetic H0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1:I

    return p0
.end method

.method private H1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/utils/AAMethod;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->videoView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;->renderMode:I

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->initWithPreview(Lcom/tencent/ugc/TXVideoEditConstants$TXPreviewParam;)V

    :cond_0
    return-void
.end method

.method static synthetic I0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1:I

    return p1
.end method

.method private I1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3
    iget v0, v0, Landroid/graphics/Point;->x:I

    const v1, 0x7f0a031b

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/VideoProgressView;

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V2:Lcom/guochao/faceshow/views/VideoProgressView;

    .line 5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/VideoProgressView;->setViewWidth(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V2:Lcom/guochao/faceshow/views/VideoProgressView;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P4:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/VideoProgressView;->setThumbnailData(Ljava/util/List;)V

    .line 7
    new-instance v1, Lcom/guochao/faceshow/views/s;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget-wide v2, v2, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/views/s;-><init>(J)V

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B3:Lcom/guochao/faceshow/views/s;

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V2:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/s;->F(Lcom/guochao/faceshow/views/VideoProgressView;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B3:Lcom/guochao/faceshow/views/s;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->n5:Lcom/guochao/faceshow/views/s$e;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/s;->E(Lcom/guochao/faceshow/views/s$e;)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B3:Lcom/guochao/faceshow/views/s;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/s;->D(I)V

    return-void
.end method

.method private J1()V
    .locals 3

    const v0, 0x7f0a0319

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f:Landroid/widget/FrameLayout;

    const v0, 0x7f0a013b

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->C:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0cae

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g:Landroid/widget/ImageView;

    const v0, 0x7f0a0186

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f0a00b7

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0a018f

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D:Landroid/widget/ImageView;

    const v0, 0x7f0a0e28

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->E:Landroid/widget/ImageView;

    const v0, 0x7f0a0b9f

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->R4:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0b3d

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    const v0, 0x7f0a019d

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f0a0181

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f0a019c

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W4:Landroid/widget/ImageView;

    const v0, 0x7f0a0b3e

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->U4:Landroid/widget/TextView;

    const v0, 0x7f0a0188

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f0a09c3

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0865

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g5:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a030f

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->w:Landroid/widget/LinearLayout;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W4:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e86

    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J:Landroid/widget/TextView;

    .line 32
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0913

    .line 33
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->K:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M4:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D:Landroid/widget/ImageView;

    const v2, 0x7f0f0091

    invoke-static {v0, v1, v2, p0}, Lhc/a;->q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    :cond_0
    const v0, 0x7f0a0196

    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q4:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->U4:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a028c

    .line 39
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D4:Landroid/widget/TextView;

    const v0, 0x7f0a09fb

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->E4:Landroid/widget/LinearLayout;

    const v0, 0x7f0a013c

    .line 41
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/ZZRangeSlider;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->C4:Lcom/guochao/faceshow/views/ZZRangeSlider;

    .line 42
    new-instance v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/ZZRangeSlider;->setRangeChangeListener(Lcom/guochao/faceshow/views/ZZRangeSlider$a;)V

    return-void
.end method

.method private synthetic L1()V
    .locals 4

    const v0, 0x7f0a0bbb

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v1

    const v2, 0x7f0a0b9f

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    return-void
.end method

.method static synthetic N0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->R:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private N1(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoPath(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setBGMVolume(F)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolume(F)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->setEditer(Lcom/tencent/ugc/TXVideoEditer;)V

    .line 6
    invoke-static {}, Lcom/tencent/ugc/TXVideoInfoReader;->getInstance()Lcom/tencent/ugc/TXVideoInfoReader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/TXVideoInfoReader;->getVideoFileInfo(Ljava/lang/String;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->setTXVideoInfo(Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->addTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G1()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget-wide v0, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    iput-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    long-to-int p1, v0

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H4:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G4:I

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J1()V

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->R1()V

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t5:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->q:Landroid/app/KeyguardManager;

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->c2()V

    .line 18
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$p;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private O1(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/ugc/TXVideoEditer;->setBGMStartTime(JJ)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/TXVideoEditer;->setBGMLoop(Z)V

    return-void
.end method

.method static synthetic P0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->R:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic Q0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x1(I)V

    return-void
.end method

.method private R1()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H1()V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    iget-wide v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2(JJ)V

    return-void
.end method

.method static synthetic S0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic T0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r1()V

    return-void
.end method

.method private T1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q4:Landroid/widget/ImageView;

    const v1, 0x7f0f0626

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->resumePlay()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-wide v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N4:J

    iget v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H4:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ugc/TXVideoEditer;->startPlayFromTime(JJ)V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    return-void
.end method

.method private V1(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic W0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/l;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    return-object p0
.end method

.method private W1(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x9

    const-string v0, "9"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x8

    const-string v0, "8"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x7

    const-string v0, "7"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    const-string v0, "6"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x5

    const-string v0, "5"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    const-string v0, "4"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x3

    const-string v0, "3"

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x2

    const-string v0, "2"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x1

    const-string v0, "1"

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x0

    const v0, 0x7f12068c

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e2(ILjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic X0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    return-wide v0
.end method

.method private X1()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->R4:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V2:Lcom/guochao/faceshow/views/VideoProgressView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V3:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lcom/guochao/faceshow/fragment/TCTimeFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/fragment/TCTimeFragment;-><init>()V

    iput-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V3:Lcom/guochao/faceshow/fragment/TCTimeFragment;

    const v3, 0x7f0a0318

    const-string v4, "time_fragment"

    .line 10
    invoke-virtual {v1, v3, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 12
    :goto_0
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 13
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->R4:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/guochao/faceshow/activity/c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/c;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic Y0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B1(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    return-void
.end method

.method private Y1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->removeTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->z:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->addTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getTXVideoInfo()Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I1()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d2()V

    .line 6
    iget-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    iget-wide v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2(JJ)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-string v1, "\u72b6\u6001\u5f02\u5e38\uff0c\u7ed3\u675f\u7f16\u8f91"

    .line 7
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method static synthetic Z0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    return-wide p1
.end method

.method private Z1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d2()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/TCEditerUtil;->generateVideoPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/guochao/faceshow/views/l;

    invoke-direct {v0}, Lcom/guochao/faceshow/views/l;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    const-string v2, ""

    .line 9
    invoke-virtual {v0, p0, v2}, Lcom/guochao/faceshow/views/l;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/l;->f(Z)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/l;->g(Z)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/l;->i()V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    const-string v1, "0.00%"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/l;->h(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-wide v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    iget-wide v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/ugc/TXVideoEditer;->setCutFromTime(JJ)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/TXVideoEditer;->setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V

    const-string v0, "zune"

    const-string v1, "\u5f00\u59cb\u8f93\u51fa\u89c6\u9891"

    .line 16
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const/16 v1, 0xe10

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoBitrate(I)V

    .line 18
    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/ugc/TXVideoEditer;->generateVideo(ILjava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/ugc/TXVideoEditer;->generateVideo(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L1()V

    return-void
.end method

.method static synthetic b1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b2(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;Ljava/lang/String;)V

    return-void
.end method

.method private b2(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/PushVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    const-string v2, "key_video_editer_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J4:I

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o:Ljava/lang/String;

    const-string v2, "titleName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->k:Ljava/lang/String;

    const-string v2, "typeId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->l:Ljava/lang/String;

    const-string v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->k5:Ljava/lang/String;

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m:Ljava/lang/String;

    const-string v2, "musicId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->n:Ljava/lang/String;

    const-string v2, "musicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->p:Ljava/lang/String;

    const-string v2, "tyPeName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f5:Ljava/lang/String;

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->width:I

    const-string v3, "width"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget v1, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->height:I

    const-string v3, "height"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v1, "coverpath"

    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 p2, 0x4

    const-string v1, "type"

    .line 15
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget p2, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    iget-object p1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    const-string p2, "descmsg"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    const-string p2, "path"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-wide p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    iget-wide v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    sub-long/2addr p1, v3

    const-string v1, "duration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f5:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private c2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/TXVideoEditer;->setVideoProcessListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->l5:I

    .line 3
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;-><init>()V

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->l5:I

    iput v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->count:I

    const/16 v1, 0x32

    .line 5
    iput v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->width:I

    const/16 v1, 0x64

    .line 6
    iput v1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;->height:I

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/TXVideoEditer;->setThumbnail(Lcom/tencent/ugc/TXVideoEditConstants$TXThumbnail;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m5:Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setThumbnailListener(Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->processVideo()V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->A:I

    return p1
.end method

.method static synthetic d1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    return p0
.end method

.method private e2(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s5:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0465

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s5:Landroid/widget/Toast;

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const v1, 0x7f0a0a83

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0a87

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string p1, " "

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "F "

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s5:Landroid/widget/Toast;

    const/16 p2, 0x31

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s5:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s5:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->G:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic g1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    return-wide v0
.end method

.method static synthetic h1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    return-wide p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    return p1
.end method

.method static synthetic i1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic k1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N1(Ljava/io/File;)V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e:Z

    return p1
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N4:J

    return-wide v0
.end method

.method static synthetic m1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->E4:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d5:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a5:I

    return p0
.end method

.method static synthetic o1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    return-object p0
.end method

.method static synthetic p0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a5:I

    return p1
.end method

.method static synthetic q0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M:I

    return p0
.end method

.method static synthetic q1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D4:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b5:I

    return p0
.end method

.method private r1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->clear()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_1
    return-void
.end method

.method static synthetic s0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b5:I

    return p1
.end method

.method static synthetic t0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->O1(JJ)V

    return-void
.end method

.method static synthetic u0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Y4:F

    return p0
.end method

.method static synthetic v0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Y4:F

    return p1
.end method

.method private x1(I)V
    .locals 4

    const/4 v0, 0x6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilter(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilterStrength(F)V

    .line 4
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/pusher/beauty/FilterItem;

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getFilterPath(Lcom/guochao/pusher/beauty/FilterItem;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2:Landroid/graphics/Bitmap;

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v3, v2}, Lcom/tencent/ugc/TXVideoEditer;->setFilter(Landroid/graphics/Bitmap;)V

    .line 12
    :cond_2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object v2

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilter(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/FilterItem;->getDefaultValue()F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->setLastFilterStrength(F)V

    .line 15
    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    :cond_3
    return-void
.end method

.method static synthetic y0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/s;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B3:Lcom/guochao/faceshow/views/s;

    return-object p0
.end method


# virtual methods
.method public D1()Lcom/guochao/faceshow/views/s;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B3:Lcom/guochao/faceshow/views/s;

    return-object v0
.end method

.method public P1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->pausePlay()V

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    :cond_1
    return-void
.end method

.method public Q1(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P1()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/ugc/TXVideoEditer;->previewAtTime(J)V

    .line 3
    iput-wide p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N4:J

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    return-void
.end method

.method public S1()V
    .locals 4

    iget-wide v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t:J

    iget-wide v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->u:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2(JJ)V

    return-void
.end method

.method public U1(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r5:Ljava/lang/Boolean;

    return-void
.end method

.method public a2(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/ugc/TXVideoEditer;->startPlayFromTime(JJ)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_0
    return-void
.end method

.method public d2()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->stopPlay()V

    .line 3
    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    :cond_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c7

    return v0
.end method

.method public initView()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H1()V

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d5:Landroid/widget/PopupWindow;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e5:Landroid/widget/PopupWindow;

    const-string v0, "music_url"

    .line 5
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicPath"

    .line 6
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, p1}, Lcom/tencent/ugc/TXVideoEditer;->setBGM(Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v2, "musicImg"

    .line 9
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M4:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M4:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D:Landroid/widget/ImageView;

    const v4, 0x7f0f0091

    invoke-static {v2, v3, v4, p0}, Lhc/a;->q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v2, "userHeadimg"

    .line 12
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->D:Landroid/widget/ImageView;

    const v4, 0x7f0f0089

    invoke-static {v2, v3, v4, p0}, Lhc/a;->q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 13
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "musicId"

    if-nez v2, :cond_4

    .line 14
    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    .line 15
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 17
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    .line 19
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m:Ljava/lang/String;

    .line 20
    iget-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->E:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 21
    :cond_5
    iget-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W4:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepare()V

    .line 25
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M:I

    .line 26
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->release()V

    .line 27
    iget-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p3, p2}, Lcom/tencent/ugc/TXVideoEditer;->setBGMLoop(Z)V

    .line 28
    iget-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p3, v1}, Lcom/tencent/ugc/TXVideoEditer;->setBGMVolume(F)V

    .line 29
    iget p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X4:I

    if-ne p3, p2, :cond_6

    .line 30
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolume(F)V

    goto :goto_1

    .line 31
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p2, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoVolume(F)V

    .line 32
    :goto_1
    iput v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a5:I

    .line 33
    iget p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M:I

    iput p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b5:I

    .line 34
    iput p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->c5:I

    .line 35
    iget-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const-wide/16 v0, 0x0

    int-to-long v2, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/tencent/ugc/TXVideoEditer;->setBGMStartTime(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 36
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 37
    :goto_2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 38
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p2, p1}, Lcom/tencent/ugc/TXVideoEditer;->setBGM(Ljava/lang/String;)I

    goto :goto_3

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    .line 40
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {p2, p1}, Lcom/tencent/ugc/TXVideoEditer;->setBGM(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "\u89c6\u9891\u7f16\u8f91\u5931\u8d25"

    const-string p2, "\u80cc\u666f\u97f3\u4ec5\u652f\u6301MP3\u683c\u5f0f\u6216M4A\u97f3\u9891"

    .line 41
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/views/h;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onAddPaster(Ly7/c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object v0, p1, Ly7/c;->a:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Ly7/c;->b:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const v0, 0x7f0f0491

    if-lez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x53

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-eqz p1, :cond_18

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F1()V

    goto/16 :goto_5

    .line 4
    :sswitch_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F1()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e5:Landroid/widget/PopupWindow;

    if-nez p1, :cond_4

    const p1, 0x7f0d0406

    .line 9
    invoke-static {p0, p1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a013d

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCReversalSeekBar;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    const v0, 0x7f0a07c5

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/TCReversalSeekBar;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X4:I

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    if-ne v0, v8, :cond_2

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setProgress(F)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setProgress(F)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setProgress(F)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setProgress(F)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setProgress(F)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Q:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    new-instance v2, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$d;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setOnSeekProgressListener(Lcom/guochao/faceshow/views/TCReversalSeekBar$a;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V4:Lcom/guochao/faceshow/views/TCReversalSeekBar;

    new-instance v2, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$e;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$e;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/TCReversalSeekBar;->setOnSeekProgressListener(Lcom/guochao/faceshow/views/TCReversalSeekBar$a;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v0, v5, v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t1(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e5:Landroid/widget/PopupWindow;

    .line 27
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$f;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 28
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->e5:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2, v0, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 30
    :cond_5
    :goto_1
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1(I)V

    goto/16 :goto_5

    .line 31
    :sswitch_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto/16 :goto_5

    .line 32
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    if-ne p1, v2, :cond_6

    goto/16 :goto_5

    .line 34
    :cond_6
    iput v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i:I

    .line 35
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->T1()V

    goto/16 :goto_5

    .line 36
    :sswitch_4
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    goto/16 :goto_5

    .line 37
    :sswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const v0, 0x7f0f0491

    if-lez p1, :cond_7

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 39
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 40
    :goto_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-eqz p1, :cond_8

    .line 41
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F1()V

    .line 42
    :cond_8
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d2()V

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    const-string v2, "ResourceListItemBean"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1, v8}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5

    .line 46
    :sswitch_6
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-eqz p1, :cond_9

    .line 47
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F1()V

    .line 48
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    .line 49
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 51
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d5:Landroid/widget/PopupWindow;

    if-nez p1, :cond_b

    const p1, 0x7f0d0400

    .line 52
    invoke-static {p0, p1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0af0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->N:Landroid/widget/TextView;

    .line 54
    new-instance v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$b;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a013c

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/RangeSlider;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->O:Lcom/guochao/faceshow/views/RangeSlider;

    const v0, 0x7f0a0ad2

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1208c4

    .line 57
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a5:I

    int-to-long v9, v4

    invoke-static {v9, v10}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v7

    iget v4, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b5:I

    int-to-long v9, v4

    invoke-static {v9, v10}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->O:Lcom/guochao/faceshow/views/RangeSlider;

    new-instance v2, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/RangeSlider;->setRangeChangeListener(Lcom/guochao/faceshow/views/RangeSlider$c;)V

    const v0, 0x7f0a05fd

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P:Landroid/widget/RelativeLayout;

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->O:Lcom/guochao/faceshow/views/RangeSlider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RangeSlider;->n()V

    .line 62
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v0, v5, v3}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t1(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d5:Landroid/widget/PopupWindow;

    goto/16 :goto_5

    :cond_b
    if-eqz p1, :cond_18

    .line 64
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_18

    .line 65
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d5:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1, v0, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_5

    .line 66
    :sswitch_7
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-eqz p1, :cond_c

    .line 67
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F1()V

    .line 68
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d

    .line 69
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 70
    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d2()V

    .line 71
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x21

    const-string v1, "type"

    .line 72
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x3e8

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_5

    .line 74
    :sswitch_8
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1:I

    if-eq p1, v5, :cond_f

    if-nez p1, :cond_e

    goto :goto_3

    .line 75
    :cond_e
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f0f0609

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 76
    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f0f0608

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    :goto_4
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-eqz p1, :cond_10

    .line 78
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F1()V

    .line 79
    :cond_10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_11

    .line 80
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    :cond_11
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const p1, 0x7f0d0409

    .line 82
    invoke-static {p0, p1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a04dc

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0037

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 85
    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    const v1, 0x7f0a0036

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 90
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    new-instance v1, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;

    const v2, 0x7f0d021e

    invoke-direct {v1, p0, p0, v2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$g;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/content/Context;I)V

    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1:Ljava/util/List;

    if-nez v0, :cond_12

    .line 94
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->getLJList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1:Ljava/util/List;

    .line 95
    invoke-static {p0}, Lcom/guochao/faceshow/utils/Tool;->getljListName(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->L4:Ljava/util/ArrayList;

    .line 96
    :cond_12
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a1:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;->resetData(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I:Landroid/widget/RelativeLayout;

    invoke-static {p1, v0, v5, v3}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowBottomAnim(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$h;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 99
    invoke-direct {p0, v8}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1(I)V

    goto :goto_5

    .line 100
    :sswitch_9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    if-nez p1, :cond_13

    return-void

    .line 101
    :cond_13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->C4:Lcom/guochao/faceshow/views/ZZRangeSlider;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ZZRangeSlider;->getRightIndex()I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->C4:Lcom/guochao/faceshow/views/ZZRangeSlider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ZZRangeSlider;->getLeftIndex()I

    move-result v0

    sub-int/2addr p1, v0

    .line 102
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j:Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    iget-wide v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    int-to-long v2, p1

    mul-long v4, v0, v2

    long-to-float p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr p1, v4

    const v5, 0x453b8000    # 3000.0f

    cmpg-float p1, p1, v5

    if-ltz p1, :cond_14

    mul-long v0, v0, v2

    long-to-float p1, v0

    div-float/2addr p1, v4

    const/high16 v0, 0x467a0000    # 16000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_15

    :cond_14
    const p1, 0x7f1209d6

    .line 104
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 105
    :cond_15
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->e()Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    .line 106
    :cond_16
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Z1()V

    goto :goto_5

    .line 107
    :sswitch_a
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->F4:Z

    if-nez p1, :cond_18

    .line 108
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->K4:I

    if-ne p1, v8, :cond_17

    .line 109
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getAllThumbnails()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P4:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Y1()V

    .line 111
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->K4:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->K4:I

    .line 112
    :cond_17
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X1()V

    :cond_18
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0181 -> :sswitch_a
        0x7f0a0186 -> :sswitch_9
        0x7f0a0188 -> :sswitch_8
        0x7f0a018f -> :sswitch_7
        0x7f0a019c -> :sswitch_6
        0x7f0a019d -> :sswitch_5
        0x7f0a0af0 -> :sswitch_4
        0x7f0a0b3e -> :sswitch_3
        0x7f0a0cae -> :sswitch_2
        0x7f0a0e28 -> :sswitch_1
        0x7f0a0e86 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x200000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0a0bbb

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/guochao/faceshow/views/l;

    invoke-direct {p1}, Lcom/guochao/faceshow/views/l;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    const-string v2, ""

    .line 9
    invoke-virtual {p1, p0, v2}, Lcom/guochao/faceshow/views/l;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/views/l;->f(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/views/l;->g(Z)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->i()V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->clear()V

    .line 14
    invoke-static {}, Lab/b;->d()Lab/b;

    move-result-object p1

    invoke-virtual {p1}, Lab/b;->b()V

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "video_editer_uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a:Landroid/net/Uri;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "coverpath"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "type_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->k:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "topic_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->l:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "topicName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->k5:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "musicId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->m:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "musicName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->n:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "titleName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "tyPeName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->p:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "choose"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I4:I

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "from"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J4:I

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "musicImg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->M4:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "isHaveBGM"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X4:I

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "source"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->f5:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v2, "resolution"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->c:I

    .line 31
    new-instance p1, Lcom/tencent/ugc/TXVideoEditer;

    invoke-direct {p1, p0}, Lcom/tencent/ugc/TXVideoEditer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a:Landroid/net/Uri;

    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 34
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_2

    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->I4:I

    if-ne p1, v0, :cond_2

    .line 35
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$n;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$o;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->j5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o5:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o5:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d2()V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setThumbnailListener(Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoProcessListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoProcessListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->cancel()V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXVideoEditer;->setVideoGenerateListener(Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXVideoEditer;->release()V

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->d:Lcom/tencent/ugc/TXVideoEditer;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    if-eqz v0, :cond_2

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->removeTXVideoPreviewListenerWrapper(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$TXVideoPreviewListenerWrapper;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->cleaThumbnails()V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->clear()V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->v:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    .line 21
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onEventBus(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "upLoadOver"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onGenerateComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9884\u5904\u7406\u5b8c\u6210 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u5b58\u5728 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", \u6587\u4ef6\u5927\u5c0f = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$j;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGenerateProgress(F)V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$i;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$i;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;F)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->P1()V

    return-void
.end method

.method public onProcessComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s:Lcom/guochao/faceshow/views/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/l;->d()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$s;-><init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProcessProgress(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progress is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Process"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->S1()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h5:I

    sub-int v1, p1, p2

    const/16 v2, 0x9

    const/16 v3, 0xc8

    if-le v1, v3, :cond_2

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    if-lez p1, :cond_1

    sub-int/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    goto :goto_0

    .line 7
    :cond_1
    iput v2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    .line 8
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x1(I)V

    .line 9
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1:I

    .line 10
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W1(I)V

    return v0

    :cond_2
    sub-int/2addr p2, p1

    if-le p2, v3, :cond_5

    .line 11
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    if-ge p1, v2, :cond_3

    add-int/2addr p1, v0

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    .line 14
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->x1(I)V

    .line 15
    iget p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->y:I

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->V1:I

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W1(I)V

    return v0

    .line 17
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h5:I

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->i5:I

    :cond_5
    :goto_2
    return v0
.end method

.method public t1(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const p3, 0xdcdcdc

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p3, 0x1

    .line 3
    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/16 p4, 0x10

    .line 6
    invoke-virtual {v0, p4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 7
    invoke-virtual {v0, p3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f1304ca

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/16 p1, 0x53

    const/4 p3, 0x0

    .line 10
    invoke-virtual {v0, p2, p1, p3, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v0
.end method
