.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "agree_license"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->f:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->f:Landroid/app/Dialog;

    return-void
.end method
