.class Lcom/guochao/faceshow/paster/TCPasterActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/TimeSeekBar$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/paster/TCPasterActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/paster/TCPasterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$b;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$b;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->k0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TCLayerViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/TCLayerViewGroup;->getSelectedLayerOperationView()Lcom/guochao/faceshow/views/TCLayerOperationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/guochao/faceshow/views/TCLayerOperationView;->n(JJ)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$b;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/paster/TCPasterActivity;->l0(Lcom/guochao/faceshow/paster/TCPasterActivity;)V

    :cond_0
    return-void
.end method
