.class Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/a;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->e(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->a(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView$b;->a:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->d(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->f(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
