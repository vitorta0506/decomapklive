.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

.field b:Lcom/guochao/faceshow/utils/RecorderUtil;

.field private c:Z

.field d:J

.field private e:Z

.field mImageViewCancelIndicator:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewRecordTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewRecordTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewReleaseTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVoiceWaveView:Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->e:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->Z1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->e:Z

    return p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->c:Z

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->c:Z

    return p1
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->W1(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private V1()I
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const v0, 0x7f120082

    return v0

    :cond_1
    const v0, 0x7f120083

    return v0
.end method

.method private W1(I)Ljava/lang/String;
    .locals 6

    const-string v0, "0"

    const/16 v1, 0xa

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    div-int/lit8 v3, p1, 0x3c

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v3, v1, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/2addr p1, v2

    if-ge p1, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private X1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTip:Landroid/widget/TextView;

    const v1, 0x7f120186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/RecorderUtil;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->b:Lcom/guochao/faceshow/utils/RecorderUtil;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/RecorderUtil;->setOnRecordListener(Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mVoiceWaveView:Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private Y1(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v5, v3

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-float v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    int-to-float p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private synthetic Z1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->e:Z

    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mImageViewCancelIndicator:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->Y1(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mImageViewCancelIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->c:Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewReleaseTip:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewReleaseTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->c:Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mImageViewCancelIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 12
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->e:Z

    if-eqz p1, :cond_4

    return v1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->b:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/RecorderUtil;->stopRecording()V

    return v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "android.permission.RECORD_AUDIO"

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->a2()V

    return v1

    .line 16
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->d:J

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->b:Lcom/guochao/faceshow/utils/RecorderUtil;

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/RecorderUtil;->startRecording()V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTip:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->V1()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mVoiceWaveView:Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mImageViewCancelIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    if-eqz p1, :cond_7

    .line 23
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;->onRecordStart(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)V

    .line 24
    :cond_7
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->e:Z

    :goto_0
    return v0
.end method

.method private a2()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e7

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->X1()V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    :cond_0
    return-void
.end method
