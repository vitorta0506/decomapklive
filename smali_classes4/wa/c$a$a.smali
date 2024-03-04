.class Lwa/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

.field final synthetic b:Lwa/c$a;


# direct methods
.method constructor <init>(Lwa/c$a;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V
    .locals 0

    iput-object p1, p0, Lwa/c$a$a;->b:Lwa/c$a;

    iput-object p2, p0, Lwa/c$a$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lwa/c$a$a;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    const-class v0, Lcom/guochao/faceshow/mine/view/PaymentPasswordSettingActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
