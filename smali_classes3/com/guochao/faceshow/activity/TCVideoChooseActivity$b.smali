.class Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/adapters/TCVideoEditerListAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->g0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    const p2, 0x7f1209d5

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoChooseActivity$b;->a:Lcom/guochao/faceshow/activity/TCVideoChooseActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/TCVideoChooseActivity;->i0(Lcom/guochao/faceshow/activity/TCVideoChooseActivity;)V

    :cond_1
    return-void
.end method
