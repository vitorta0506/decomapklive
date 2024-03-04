.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->v0(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public onResponse()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;)V

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method
