.class Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/h$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    const v1, 0x7f010029

    const v2, 0x7f010025

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
