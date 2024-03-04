.class Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a$a;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a$a;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a$a;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;

    iget-object p1, p1, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment$a;->a:Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/dialog/Photo_Dialog_Fragment;->startCamera()V

    return-void
.end method
