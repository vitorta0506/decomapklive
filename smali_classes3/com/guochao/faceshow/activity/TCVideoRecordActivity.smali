.class public Lcom/guochao/faceshow/activity/TCVideoRecordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field private A:Landroid/view/ScaleGestureDetector;

.field private B:F

.field private B3:Landroid/widget/TextView;

.field private C:F

.field private C4:Landroid/widget/RelativeLayout;

.field private D:I

.field private D4:Landroid/widget/LinearLayout;

.field private E:I

.field private E4:Z

.field private F:I

.field private F4:Z

.field private G:I

.field private G4:Landroid/widget/LinearLayout;

.field private H:I

.field private H4:Landroid/widget/ImageView;

.field private I:I

.field private final I4:I

.field private J:I

.field private J4:I

.field private K:I

.field private K4:Landroid/widget/ImageView;

.field private L:I

.field private L4:Lcom/guochao/faceshow/views/RangeSlider;

.field private M:I

.field private M4:Landroid/widget/RelativeLayout;

.field private N:Ljava/lang/String;

.field N4:I

.field private O:Ljava/lang/String;

.field O4:I

.field private P:I

.field private P4:Ljava/lang/String;

.field private Q:Landroid/widget/RadioGroup;

.field private Q4:Ljava/lang/String;

.field private R:I

.field private R4:Ljava/lang/String;

.field private S4:Ljava/lang/String;

.field private T4:Landroid/widget/ImageView;

.field private U4:Landroid/widget/TextView;

.field private final V1:Z

.field private V2:Landroid/widget/ImageView;

.field private V3:Landroid/os/CountDownTimer;

.field private V4:Ljava/lang/String;

.field private W4:Ljava/lang/String;

.field private X4:Ljava/lang/String;

.field private Y4:Ljava/lang/String;

.field private Z4:Ljava/lang/String;

.field private a:Z

.field private a1:Z

.field private a2:Landroid/widget/TextView;

.field private a5:Landroid/widget/LinearLayout;

.field private b:Z

.field private b5:Landroid/widget/ImageView;

.field private c:Z

.field private c5:Z

.field private d:Lcom/tencent/ugc/TXUGCRecord;

.field d5:I

.field private e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

.field private e5:Ljava/lang/String;

.field private f:J

.field private f5:Landroidx/core/view/GestureDetectorCompat;

.field private g:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private g5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ImageView;

.field h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

.field private i:Landroid/widget/TextView;

.field i5:I

.field private j:Landroid/widget/TextView;

.field private j5:I

.field private k:Lcom/guochao/faceshow/views/l;

.field private k5:I

.field private l:Landroid/widget/ImageView;

.field private l5:I

.field private m:Landroid/widget/ImageView;

.field m5:Landroid/widget/Toast;

.field private n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

.field private o:Z

.field private p:Landroid/media/AudioManager;

.field private q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private r:Z

.field private s:I

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/FrameLayout;

.field private v:Lcom/guochao/faceshow/views/RecordProgressView;

.field private w:Landroid/widget/ImageView;

.field private x:Z

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->o:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->x:Z

    .line 9
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    const/4 v2, 0x3

    .line 10
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D:I

    .line 11
    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I:I

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J:I

    const/4 v2, 0x2

    .line 13
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R:I

    .line 14
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V1:Z

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I4:I

    const-string v2, ""

    .line 16
    iput-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z4:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c5:Z

    const/4 v2, 0x6

    .line 18
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d5:I

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->getFilterItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g5:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    .line 21
    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i5:I

    .line 22
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->j5:I

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k5:I

    .line 24
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    return-void
.end method

.method static synthetic A0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private B0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->finish()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/ugc/TXUGCPartsManager;->deleteAllParts()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->finish()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T0()V

    :goto_0
    return-void
.end method

.method private B1(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m5:Landroid/widget/Toast;

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

    iput-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m5:Landroid/widget/Toast;

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
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m5:Landroid/widget/Toast;

    const/16 p2, 0x31

    const/16 v0, 0xc8

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m5:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m5:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private D1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    const v2, 0x7f0803df

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/ugc/TXUGCRecord;->toggleTorch(Z)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    const v2, 0x7f0803e0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->toggleTorch(Z)Z

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    return-void
.end method

.method private E0(ILandroid/widget/TextView;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g5:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-le p1, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g5:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/pusher/beauty/FilterItem;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;

    move-result-object p2

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getFilterPath(Lcom/guochao/pusher/beauty/FilterItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/FilterItem;->getDefaultValue()F

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setFilter(Ljava/lang/String;F)V

    return-void
.end method

.method private F0()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->x:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->x:Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RecordProgressView;->j()V

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->x:Z

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-virtual {v2}, Lcom/guochao/faceshow/views/RecordProgressView;->g()V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-nez v2, :cond_2

    .line 8
    invoke-static {p0}, Lcom/tencent/ugc/TXUGCRecord;->getInstance(Landroid/content/Context;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v2}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/ugc/TXUGCPartsManager;->deleteLastPart()V

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v2}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/ugc/TXUGCPartsManager;->getDuration()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 11
    iget-object v4, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    iget v5, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->timeFormat(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget v4, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 13
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const v3, 0x7f0803b7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const v3, 0x7f0803b8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v2}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/ugc/TXUGCPartsManager;->getPartsPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 19
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v3, 0x7f0f060a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private G0()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TXUGC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TXUGC_"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private H0()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "txrtmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UGCParts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private I0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xbb8

    goto :goto_0

    :cond_1
    const/16 v1, 0x1388

    :goto_0
    const-string v2, "record_config_min_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E:I

    const/16 v1, 0x3a98

    const-string v2, "record_config_max_duration"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1209d0

    .line 5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_2
    const/4 v1, 0x0

    const-string v2, "record_config_aspect_ratio"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G:I

    const/4 v1, 0x4

    .line 7
    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D:I

    const/4 v1, 0x1

    const-string v2, "record_config_go_editer"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a1:Z

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G:I

    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->s:I

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/RecordProgressView;->setMaxDuration(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E:I

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/RecordProgressView;->setMinDuration(I)V

    const/16 v0, 0x12c0

    .line 12
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->K:I

    const/16 v0, 0x19

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->L:I

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->M:I

    return-void
.end method

.method private N0()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.CAMERA"

    .line 2
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c5:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-array v1, v2, [Ljava/lang/String;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x64

    .line 9
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 10
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c5:Z

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private P0()V
    .locals 5

    const v0, 0x7f0a09c3

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->C4:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0741

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->u:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a030f

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0186

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const v1, 0x7f0803b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const v0, 0x7f0a07e1

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0df2

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v0, 0x7f0a0ba2

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B3:Landroid/widget/TextView;

    const v0, 0x7f0a08d3

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0188

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a07e0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->H4:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a028b

    .line 17
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->K4:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0b9d

    .line 19
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V2:Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a019c

    .line 21
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T4:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a018f

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0a0950

    .line 24
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f0a023a

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/ComposeRecordBtn;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    .line 26
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->getProgressView()Lcom/guochao/faceshow/views/RecordProgressView;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    .line 27
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->A:Landroid/view/ScaleGestureDetector;

    .line 28
    new-instance v0, Lcom/guochao/faceshow/views/l;

    const-string v2, ""

    invoke-direct {v0, p0, v2}, Lcom/guochao/faceshow/views/l;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k:Lcom/guochao/faceshow/views/l;

    .line 29
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/l;->f(Z)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k:Lcom/guochao/faceshow/views/l;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/l;->g(Z)V

    const v0, 0x7f0a019d

    .line 31
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_0
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    new-instance v3, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$d;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-direct {v0, p0, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->f5:Landroidx/core/view/GestureDetectorCompat;

    const/4 v3, 0x1

    .line 37
    invoke-virtual {v0, v3}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    new-instance v4, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$e;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a098b

    .line 39
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    const v0, 0x7f0a0930

    .line 40
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    new-instance v4, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0a0195

    .line 42
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->j:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0ab0

    .line 44
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a2:Landroid/widget/TextView;

    const v0, 0x7f0a03bc

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0913

    .line 48
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->U4:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->K4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "musicPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/16 v3, 0x37

    if-ne v0, v3, :cond_5

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->U4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->U4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 61
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private S0(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 2
    invoke-virtual {p1, p2}, Lcom/tencent/ugc/TXUGCRecord;->setRecordSpeed(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N4:I

    iget p3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O4:I

    invoke-virtual {p1, p2, p3}, Lcom/tencent/ugc/TXUGCRecord;->playBGMFromTime(II)Z

    :cond_0
    return-void
.end method

.method private T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->pauseRecord()I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->pauseBGM()Z

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b0()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->c()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method private W0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/tencent/ugc/TXUGCRecord;->getInstance(Landroid/content/Context;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "instance"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private X0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RecordProgressView;->i()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopBGM()Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopCameraPreview()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/ugc/TXUGCPartsManager;->deleteAllParts()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->release()V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->W0()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b:Z

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->destroyOnMainThread()V

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b0()V

    return-void
.end method

.method private Y0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p:Landroid/media/AudioManager;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private Z0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->resumeRecord()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setMicVolume(F)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->resumeBGM()Z

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setBGM(Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N4:I

    iget v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O4:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/ugc/TXUGCRecord;->playBGMFromTime(II)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O:Ljava/lang/String;

    .line 10
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->d()V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    .line 13
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->x:Z

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y0()V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method public static a1(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getTxugcPath()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmssSSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 10
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 13
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->p:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private b1(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F4:Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B3:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 20
    :pswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 23
    :pswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 26
    :pswitch_6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 33
    :pswitch_7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method static synthetic d0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Lcom/tencent/ugc/TXUGCRecord;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    return-object p0
.end method

.method private d1()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$a;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f1203cb

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

.method static synthetic e0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Lcom/tencent/ugc/TXUGCRecord;)Lcom/tencent/ugc/TXUGCRecord;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    return-object p1
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F4:Z

    return p0
.end method

.method private g1(I)V
    .locals 1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x12

    const-string v0, "9"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x11

    const-string v0, "8"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x10

    const-string v0, "7"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xf

    const-string v0, "6"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xe

    const-string v0, "5"

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xd

    const-string v0, "4"

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xc

    const-string v0, "3"

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xb

    const-string v0, "2"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xa

    const-string v0, "1"

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const v0, 0x7f12068c

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B1(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
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

.method private h1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$j;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->snapshot(Lcom/tencent/ugc/TXRecordCommon$ITXSnapshotListener;)V

    :cond_0
    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R:I

    return p0
.end method

.method private i1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b:Z

    const/4 v0, 0x6

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V

    .line 4
    new-instance v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;

    invoke-direct {v0}, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;-><init>()V

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoResolution:I

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E:I

    iput v2, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->minDuration:I

    .line 7
    iget v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F:I

    iput v2, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->maxDuration:I

    .line 8
    iput v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoGop:I

    const/16 v1, 0x19

    .line 9
    iput v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoFps:I

    .line 10
    iget-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c:Z

    iput-boolean v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->isFront:Z

    .line 11
    iget-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a1:Z

    iput-boolean v1, v0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->needEdit:Z

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R:I

    invoke-virtual {v1, v2}, Lcom/tencent/ugc/TXUGCRecord;->setRecordSpeed(I)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/ugc/TXUGCRecord;->startCameraCustomPreview(Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->s:I

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setAspectRatio(I)V

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R:I

    return p1
.end method

.method private k1(J)V
    .locals 7

    .line 1
    new-instance v6, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$b;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;JJ)V

    iput-object v6, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V3:Landroid/os/CountDownTimer;

    .line 2
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P:I

    return p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->S0(JJ)V

    return-void
.end method

.method private m1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    const-string v3, "from"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "choose"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->coverPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    const-string v1, "type"

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->videoPath:Ljava/lang/String;

    const-string v2, "key_video_editer_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->videoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video_editer_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->coverPath:Ljava/lang/String;

    const-string v2, "coverpath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->H:I

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->K:I

    const-string v2, "record_config_bite_rate"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P4:Ljava/lang/String;

    const-string v2, "musicId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q4:Ljava/lang/String;

    const-string v2, "musicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z4:Ljava/lang/String;

    const-string v2, "musicImg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "isHaveBGM"

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x37

    if-ne v1, v2, :cond_2

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V4:Ljava/lang/String;

    const-string v2, "questionTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->W4:Ljava/lang/String;

    const-string v2, "infoId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R4:Ljava/lang/String;

    const-string v2, "titleName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->X4:Ljava/lang/String;

    const-string v2, "type_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->S4:Ljava/lang/String;

    const-string v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e5:Ljava/lang/String;

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y4:Ljava/lang/String;

    const-string v2, "tyPeName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y4:Ljava/lang/String;

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x2

    .line 27
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic n0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B0()V

    return-void
.end method

.method static synthetic o0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B3:Landroid/widget/TextView;

    return-object p0
.end method

.method private o1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    const-string v2, "type"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->descMsg:Ljava/lang/String;

    const-string v2, "descmsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->videoPath:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    iget-object v1, v1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->coverPath:Ljava/lang/String;

    const-string v2, "coverpath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-wide v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->f:J

    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e5:Ljava/lang/String;

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "resolution"

    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->H:I

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->finish()V

    :cond_1
    return-void
.end method

.method static synthetic p0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    return-void
.end method

.method static synthetic q0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t1()V

    return-void
.end method

.method private q1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/ugc/TXUGCRecord;->getInstance(Landroid/content/Context;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->G0()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".mp4"

    const-string v4, ".jpg"

    .line 7
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->H0()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v5, v0, v4, v3}, Lcom/tencent/ugc/TXUGCRecord;->startRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->d()V

    .line 11
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lz8/c;->E(Z)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v3, 0x7f0f060b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/ugc/TXUGCRecord;->setBGM(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P:I

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N4:I

    iget v4, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O4:I

    invoke-virtual {v0, v3, v4}, Lcom/tencent/ugc/TXUGCRecord;->playBGMFromTime(II)Z

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tencent/ugc/TXUGCRecord;->setMicVolume(F)Z

    .line 21
    :cond_4
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    .line 22
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y0()V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic r0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E4:Z

    return p0
.end method

.method private r1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopBGM()Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopRecord()I

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b0()V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic s0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E4:Z

    return p1
.end method

.method static synthetic t0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    return p0
.end method

.method private t1()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->y:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 4
    iget-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-nez v2, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/ugc/TXUGCPartsManager;->getPartsPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q1()V

    .line 8
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z0()V

    .line 10
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T0()V

    const/4 v2, 0x2

    .line 12
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->q1()V

    .line 14
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iput-wide v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->y:J

    return-void
.end method

.method static synthetic u0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    return p0
.end method

.method static synthetic v0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->f5:Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method private x1()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R4:Ljava/lang/String;

    const-string v2, "titleName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->X4:Ljava/lang/String;

    const-string v2, "typeId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->S4:Ljava/lang/String;

    const-string v2, "topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e5:Ljava/lang/String;

    const-string v2, "topicName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y4:Ljava/lang/String;

    const-string v2, "tyPeName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CHOOSE_TYPE"

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic y0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T0()V

    return-void
.end method


# virtual methods
.method protected Q0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J:I

    const/4 v2, 0x1

    .line 3
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I:I

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I:I

    goto :goto_0

    .line 5
    :cond_1
    iput v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I:I

    goto :goto_0

    .line 6
    :cond_2
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I:I

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->X0()V

    const v0, 0x7f010025

    const v1, 0x7f010028

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00cb

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    invoke-static {p0}, Lcom/tencent/ugc/TXUGCRecord;->getInstance(Landroid/content/Context;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setVideoRenderMode(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/TXUGCRecord;->setVideoRecordListener(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I:I

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setHomeOrientation(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J:I

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setRenderRotation(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$c;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setVideoProcessListener(Lcom/tencent/ugc/TXUGCRecord$VideoCustomProcessListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_4

    const-string p1, "music_url"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "musicPath"

    .line 3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "musicImg"

    .line 4
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z4:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z4:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v2, 0x7f0f0091

    invoke-static {v0, v1, v2, p0}, Lhc/a;->q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v0, "userHeadimg"

    .line 7
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Z4:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v2, 0x7f0f0089

    invoke-static {v0, v1, v2, p0}, Lhc/a;->q(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    :goto_0
    const-string v0, "musicId"

    .line 9
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P4:Ljava/lang/String;

    const-string v0, "musicName"

    .line 10
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q4:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 12
    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    .line 13
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iput-object p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_3

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/TXUGCRecord;->setBGM(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P:I

    .line 17
    :cond_3
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P:I

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O4:I

    :cond_4
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B0()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const/4 p1, 0x7

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    .line 3
    iput-boolean v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F4:Z

    const-wide/16 v0, 0x4

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k1(J)V

    goto/16 :goto_1

    .line 5
    :sswitch_1
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->stopBGM()Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R:I

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXUGCRecord;->setRecordSpeed(I)V

    goto/16 :goto_1

    .line 8
    :sswitch_2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h1()V

    goto/16 :goto_1

    .line 9
    :sswitch_3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->x1()V

    goto/16 :goto_1

    .line 11
    :sswitch_4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;-><init>()V

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d5:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setType(I)V

    .line 13
    new-instance v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 15
    :sswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/utils/Tool;->dismissPopWindow()V

    const p1, 0x7f0d0400

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0af0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    new-instance v1, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$h;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a013c

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/views/RangeSlider;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->L4:Lcom/guochao/faceshow/views/RangeSlider;

    const v0, 0x7f0a05fd

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->M4:Landroid/widget/RelativeLayout;

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->L4:Lcom/guochao/faceshow/views/RangeSlider;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/RangeSlider;->n()V

    const v0, 0x7f0a0ad2

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1208c4

    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget v5, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->L4:Lcom/guochao/faceshow/views/RangeSlider;

    new-instance v2, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$i;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$i;-><init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/RangeSlider;->setRangeChangeListener(Lcom/guochao/faceshow/views/RangeSlider$c;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->M4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->C4:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowBottomAnim(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    goto :goto_1

    .line 29
    :sswitch_6
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F4:Z

    if-eqz p1, :cond_1

    .line 30
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b1(I)V

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t1()V

    goto :goto_1

    .line 32
    :sswitch_7
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D1()V

    goto :goto_1

    .line 33
    :sswitch_8
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c:Z

    const v0, 0x7f0f060d

    if-eqz p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T4:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T4:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 38
    :goto_0
    iput-boolean v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0803df

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_3

    .line 41
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c:Z

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/TXUGCRecord;->switchCamera(Z)Z

    goto :goto_1

    .line 42
    :sswitch_9
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/activity/MusicActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3e8

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 44
    :sswitch_a
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F0()V

    goto :goto_1

    .line 45
    :sswitch_b
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 46
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->D4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r1()V

    goto :goto_1

    .line 48
    :sswitch_c
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d1()V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0102 -> :sswitch_c
        0x7f0a0186 -> :sswitch_b
        0x7f0a0188 -> :sswitch_a
        0x7f0a018f -> :sswitch_9
        0x7f0a019c -> :sswitch_8
        0x7f0a019d -> :sswitch_7
        0x7f0a023a -> :sswitch_6
        0x7f0a028b -> :sswitch_5
        0x7f0a03bc -> :sswitch_4
        0x7f0a07e0 -> :sswitch_3
        0x7f0a0ab0 -> :sswitch_2
        0x7f0a0af0 -> :sswitch_1
        0x7f0a0b9d -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q0()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->stopCameraPreview()V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T0()V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->pauseBGM()Z

    :cond_2
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b:Z

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i1()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-static {p0}, Lcom/tencent/ugc/TXUGCRecord;->getInstance(Landroid/content/Context;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const p1, 0x7f0a0102

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b5:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topicName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e5:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "musicId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P4:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "musicName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q4:Ljava/lang/String;

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "titleName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->R4:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "topic_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->S4:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "type_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->X4:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "tyPeName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y4:Ljava/lang/String;

    .line 18
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    const-string v0, "questionTitle"

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V4:Ljava/lang/String;

    .line 20
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    const/16 v1, 0x37

    if-ne p1, v1, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->V4:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "infoId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->W4:Ljava/lang/String;

    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P0()V

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->I0()V

    const/4 p1, 0x1

    .line 25
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->checkShouldShow(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 26
    :cond_2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopBGM()Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->release()V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->W0()V

    .line 7
    :cond_0
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->E(Z)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onEventBus(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "upLoadOver"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "recordFinish"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B0()V

    goto :goto_0

    :cond_1
    const-string v0, "recordAgian"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/ugc/TXUGCPartsManager;->deleteAllParts()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->a()V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/ugc/TXUGCPartsManager;->getPartsPathList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    const-string v0, "0.0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0f060a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d1()V

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->stopCameraPreview()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->b:Z

    .line 5
    iget-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->z:Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f0803df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->r:Z

    if-nez v0, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->T0()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->pauseBGM()Z

    :cond_2
    return-void
.end method

.method public onRecordComplete(Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune\uff1a"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->E(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k:Lcom/guochao/faceshow/views/l;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/l;->d()V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->e:Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;

    .line 7
    iget p1, p1, Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;->retCode:I

    if-gez p1, :cond_2

    .line 8
    iput-boolean v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a:Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/ugc/TXUGCPartsManager;->getDuration()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    iget v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->timeFormat(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/ugc/TXUGCPartsManager;->getDuration()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->f:J

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/ugc/TXUGCPartsManager;->deleteAllParts()V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->n:Lcom/guochao/faceshow/views/ComposeRecordBtn;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/ComposeRecordBtn;->a()V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->w:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0f060a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const v0, 0x7f0803b7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 20
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a1:Z

    if-eqz p1, :cond_4

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->m1()V

    goto :goto_0

    .line 22
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->o1()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onRecordEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRecordEvent = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "zune\uff1a"

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/RecordProgressView;->e()V

    :cond_0
    return-void
.end method

.method public onRecordProgress(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->v:Lcom/guochao/faceshow/views/RecordProgressView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    long-to-int v1, p1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/RecordProgressView;->setProgress(I)V

    long-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zune\uff1a"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i:Landroid/widget/TextView;

    iget p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->F:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->timeFormat(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E:I

    int-to-float p1, p1

    div-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const p2, 0x7f0803b7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const p2, 0x7f0803b8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget v0, p3, p2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->c5:Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->gotoSetting(Landroid/content/Context;)V

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i1()V

    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->a5:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Q0()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i1()V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->J4:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/TXUGCRecord;->setBGM(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P:I

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->O4:I

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/ugc/TXUGCRecord;->getMaxZoom()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->C:F

    sub-float/2addr v2, v3

    .line 4
    iget v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    .line 5
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->C:F

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 7
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    .line 8
    :cond_2
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 9
    iput v2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    .line 10
    :cond_3
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->B:F

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/TXUGCRecord;->setZoom(I)Z

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->C:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->t:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->u:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->j5:I

    sub-int v0, p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/16 v5, 0x12

    const/16 v6, 0xc8

    if-le v0, v6, :cond_4

    .line 9
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    if-nez p1, :cond_2

    .line 10
    iput v4, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    goto :goto_0

    :cond_2
    if-ge p1, v5, :cond_3

    add-int/2addr p1, v1

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    goto :goto_0

    .line 12
    :cond_3
    iput v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    .line 13
    :goto_0
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i5:I

    .line 14
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g1(I)V

    .line 15
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E0(ILandroid/widget/TextView;)V

    return v1

    :cond_4
    sub-int/2addr p1, p2

    if-le p1, v6, :cond_8

    .line 16
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    if-nez p1, :cond_5

    .line 17
    iput v5, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    goto :goto_1

    :cond_5
    if-le p1, v4, :cond_6

    sub-int/2addr p1, v1

    .line 18
    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    goto :goto_1

    .line 19
    :cond_6
    iput v3, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    .line 20
    :goto_1
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i5:I

    .line 21
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->g1(I)V

    .line 22
    iget p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->l5:I

    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->E0(ILandroid/widget/TextView;)V

    return v1

    .line 23
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->j5:I

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k5:I

    :cond_8
    :goto_2
    return v1
.end method
