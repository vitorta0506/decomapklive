.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->onWaterMarkProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/utils/TailWaterMark;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)Lcom/guochao/faceshow/utils/TailWaterMark;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->cancelProcess()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$a$a;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
