.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->P1(ILandroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
