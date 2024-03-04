.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->b2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomRecharge()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;)V

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method
