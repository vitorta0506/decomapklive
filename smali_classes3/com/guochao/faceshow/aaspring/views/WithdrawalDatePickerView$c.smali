.class Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->c(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->b(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->g(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->c(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->h(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->i(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setItems(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setCurrentPosition(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->a()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->f(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->f(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;->setCurrentPosition(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$c;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void
.end method
