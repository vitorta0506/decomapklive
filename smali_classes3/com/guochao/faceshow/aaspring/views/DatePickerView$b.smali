.class Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/wheelview/WheelView;II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-static {p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->b(Lcom/guochao/faceshow/aaspring/views/DatePickerView;III)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->d(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->d(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p3, p2, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->f:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->e(Lcom/guochao/faceshow/aaspring/views/DatePickerView;II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance p3, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->d(Lcom/guochao/faceshow/aaspring/views/DatePickerView;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;-><init>(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Landroid/content/Context;Ljava/util/List;I)V

    iput-object p3, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->l:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewDay:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->k:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {p3}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getCurrentItem()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;->e(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/DatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/DatePickerView;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->k:Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/DatePickerView;->c(Lcom/guochao/faceshow/aaspring/views/DatePickerView;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/views/DatePickerView$e;)V

    return-void
.end method
