.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Z)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;Z)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivPainSize:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;FFZ)V
    .locals 2

    float-to-double p3, p2

    const-wide/16 v0, 0x0

    cmpg-double p1, p3, v0

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    invoke-interface {p1}, Lla/a;->getSize()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "seekBar"

    invoke-static {p3, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;F)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)Z

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    invoke-interface {p1, p2}, Lla/a;->setSize(F)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->m()Lla/f;

    move-result-object p1

    invoke-interface {p1, p2}, Lla/c;->setSize(F)V

    :cond_3
    return-void
.end method
