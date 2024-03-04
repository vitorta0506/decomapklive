.class Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)Landroid/widget/TextView;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->a(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)Landroid/widget/TextView;

    move-result-object p3

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p2, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 p2, p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "%02d:%02d/%02d:%02d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)Lcom/tencent/rtmp/TXLivePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->c(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;)Lcom/tencent/rtmp/TXLivePlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXLivePlayer;->seek(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->d(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;J)J

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity$a;->a:Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;->b(Lcom/guochao/faceshow/activity/TCVideoPreviewActivity;Z)Z

    return-void
.end method
