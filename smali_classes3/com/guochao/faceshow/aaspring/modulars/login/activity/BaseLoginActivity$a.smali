.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->D(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
