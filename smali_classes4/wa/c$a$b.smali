.class Lwa/c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/n$b;


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

    iput-object p1, p0, Lwa/c$a$b;->b:Lwa/c$a;

    iput-object p2, p0, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Landroid/app/Dialog;Z)V
    .locals 0

    return-void
.end method

.method public onConfirm(Landroid/app/Dialog;ZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    iget-object v0, p0, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->MATCH_OLD_PAY_PASSWORD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lwa/c$a$b;->a:Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "pasword"

    .line 3
    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lwa/c$a$b$a;

    invoke-direct {p3, p0}, Lwa/c$a$b$a;-><init>(Lwa/c$a$b;)V

    .line 4
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
