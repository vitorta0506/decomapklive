.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->X1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoStopRecord(Ljava/lang/String;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;->setFilePath(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2, p3}, Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;->setDuration(J)V

    const-wide/16 v2, 0x3e8

    cmp-long p1, p2, v2

    if-ltz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;->onRecordEnd(Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$c;->onRecordEnd(Lcom/guochao/faceshow/aaspring/beans/VoiceInfo;Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    const p2, 0x7f12009b

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTip:Landroid/widget/TextView;

    const p2, 0x7f120186

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mImageViewCancelIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mImageViewCancelIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;Z)Z

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewReleaseTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mVoiceWaveView:Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->b()V

    return-void
.end method

.method public onTimeUsing(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mTextViewRecordTime:Landroid/widget/TextView;

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onVoiceChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mVoiceWaveView:Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->setMax(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VoiceRecordFragment;->mVoiceWaveView:Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/VoiceWaveView;->setWave(I)V

    return-void
.end method
