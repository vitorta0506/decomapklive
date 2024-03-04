.class Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/a;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$a;->a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;IIII)V
    .locals 0

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;III)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loopView"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$a;->a:Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog;->mConfirm:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
