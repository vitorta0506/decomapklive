.class Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/SelectRecordTypeFragmentDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->tvMore:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/TransactionType;->getId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;I)I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/mine/model/TransactionType;

    invoke-virtual {p3}, Lcom/guochao/faceshow/mine/model/TransactionType;->getChildId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;I)I

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/record/NewRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->reload()V

    return-void
.end method

.method public b(Landroid/app/Dialog;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
