.class Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;->a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;->a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->mConfirm:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ItemSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loopView"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;->a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->Q1(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->P1(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$b;->a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->R1(Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;I)I

    return-void
.end method
