.class Lcom/guochao/faceshow/activity/OccupationActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/OccupationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/OccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/OccupationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$a;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/OccupationActivity$a;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/OccupationActivity;->R1(Lcom/guochao/faceshow/activity/OccupationActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/OccupationActivity$a;->a:Lcom/guochao/faceshow/activity/OccupationActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/OccupationActivity;->P1(Lcom/guochao/faceshow/activity/OccupationActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/OccupationBean;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/OccupationBean;->children:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    return-void
.end method
