.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$b;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalMoneyActivity;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalRecordActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method
