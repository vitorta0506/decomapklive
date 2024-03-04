.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;->b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    return-void
.end method


# virtual methods
.method public final onConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;->b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public synthetic onDismiss()V
    .locals 0

    invoke-static {p0}, Lg8/c;->a(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;)V

    return-void
.end method
