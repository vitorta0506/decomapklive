.class Lcom/guochao/faceshow/activity/MainActivity$d;
.super Lcom/guochao/faceshow/aaspring/utils/listener/BaseSoundEffectListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/MainActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$d;->b:Lcom/guochao/faceshow/activity/MainActivity;

    iput p2, p0, Lcom/guochao/faceshow/activity/MainActivity$d;->a:I

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/listener/BaseSoundEffectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/MainActivity$d;->b:Lcom/guochao/faceshow/activity/MainActivity;

    iget v0, p0, Lcom/guochao/faceshow/activity/MainActivity$d;->a:I

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/MainActivity;->b1(Lcom/guochao/faceshow/activity/MainActivity;I)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/activity/MainActivity$d;->a:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CLICK_MINE"

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "CLICK_IM"

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "CLICK_FRIENDRING"

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "CLICK_RANKING"

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/GCEventUtils;->track(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
