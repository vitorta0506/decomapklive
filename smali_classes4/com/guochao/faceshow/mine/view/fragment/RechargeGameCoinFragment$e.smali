.class Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->d2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;->b:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    iput p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;->b:Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;

    iget p2, p0, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment$e;->a:I

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;->W1(Lcom/guochao/faceshow/mine/view/fragment/RechargeGameCoinFragment;I)V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
