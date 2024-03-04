.class Lcom/guochao/faceshow/paster/TCPasterActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/paster/TCPasterActivity;->Q0()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$e;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$e;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->o0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0346

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/paster/TCPasterActivity$e;->a:Lcom/guochao/faceshow/paster/TCPasterActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/paster/TCPasterActivity;->k0(Lcom/guochao/faceshow/paster/TCPasterActivity;)Lcom/guochao/faceshow/views/TCLayerViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
