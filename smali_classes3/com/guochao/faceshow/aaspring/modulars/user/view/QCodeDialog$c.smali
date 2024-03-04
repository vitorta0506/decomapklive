.class Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$c;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$c;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$c;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
