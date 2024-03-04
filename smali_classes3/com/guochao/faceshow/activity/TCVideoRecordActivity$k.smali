.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->y0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->y0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$k;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->y0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
