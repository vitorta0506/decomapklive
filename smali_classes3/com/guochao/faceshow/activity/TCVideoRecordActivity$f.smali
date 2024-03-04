.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->P0()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)I

    goto :goto_0

    .line 2
    :pswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)I

    goto :goto_0

    .line 3
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)I

    goto :goto_0

    .line 4
    :pswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)I

    goto :goto_0

    .line 5
    :pswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->k0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;I)I

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->d0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)Lcom/tencent/ugc/TXUGCRecord;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$f;->a:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->i0(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/ugc/TXUGCRecord;->setRecordSpeed(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a092e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
