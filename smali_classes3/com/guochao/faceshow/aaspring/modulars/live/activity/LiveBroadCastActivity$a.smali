.class Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->setLiving(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->j:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/BroadCastFragment;->w5()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->m:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/live/activity/LiveBroadCastActivity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
