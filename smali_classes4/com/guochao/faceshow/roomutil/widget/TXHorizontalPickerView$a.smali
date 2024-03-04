.class Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView$a;->a:Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView$a;->a:Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;

    invoke-static {v0}, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;->a(Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView$a;->a:Lcom/guochao/faceshow/roomutil/widget/TXHorizontalPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
