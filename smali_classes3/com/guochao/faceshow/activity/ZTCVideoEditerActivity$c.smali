.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/RangeSlider$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->q0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    mul-int v0, v0, p2

    div-int/lit8 v0, v0, 0x64

    invoke-static {p1, v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->p0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->q0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result p2

    mul-int p2, p2, p3

    div-int/lit8 p2, p2, 0x64

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->s0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;I)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result p2

    int-to-long p2, p2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->t0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;JJ)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->a:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const p3, 0x7f1208c4

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$c;->b:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->r0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
