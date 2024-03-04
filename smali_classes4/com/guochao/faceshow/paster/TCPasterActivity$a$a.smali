.class Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/paster/TCPasterActivity$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iput p2, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->b0(Lcom/guochao/faceshow/paster/TCPasterActivity;)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->e0(Lcom/guochao/faceshow/paster/TCPasterActivity;Z)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->i0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TimeSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/TimeSeekBar;->p()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->k0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TCLayerViewGroup;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->a:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->setViewVisiable(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->k0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TCLayerViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getSelectedLayerOperationView()Lcom/guochao/faceshow/views/TCLayerOperationView;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getStartTime()J

    move-result-wide v0

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->getEndTime()J

    move-result-wide v2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$a$a;->b:Lcom/guochao/faceshow/paster/TCPasterActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/paster/TCPasterActivity$a;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->i0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TimeSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/views/TimeSeekBar;->o(JJ)V

    return-void
.end method
