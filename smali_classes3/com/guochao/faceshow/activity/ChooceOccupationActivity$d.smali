.class Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/activity/OccupationActivity$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->getEvent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->n0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->o0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->p0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->m0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ChooceOccupationActivity$d;->a:Lcom/guochao/faceshow/activity/ChooceOccupationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ChooceOccupationActivity;->b0(Lcom/guochao/faceshow/activity/ChooceOccupationActivity;)V

    return-void
.end method
