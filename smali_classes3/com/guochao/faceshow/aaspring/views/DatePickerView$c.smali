.class Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DatePickerView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/wheelview/WheelView;II)V
    .locals 2

    const/4 p1, 0x1

    add-int/2addr p3, p1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p2, p1, v0, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b(Lcom/guochao/faceshow/aaspring/views/DatePickerView;III)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->l:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getCurrentItem()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->l:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->c(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;)V

    return-void
.end method
