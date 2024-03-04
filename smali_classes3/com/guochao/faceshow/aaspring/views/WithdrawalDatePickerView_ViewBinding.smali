.class public Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const v1, 0x7f0a0e7f

    const-string v2, "field \'mWheelViewYear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    .line 4
    const-class v0, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    const v1, 0x7f0a0e7e

    const-string v2, "field \'mWheelViewMonth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewYear:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/views/WithdrawalDatePickerView;->mWheelViewMonth:Lcom/guochao/faceshow/aaspring/views/loopView/LoopView;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
