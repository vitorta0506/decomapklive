.class Lcom/guochao/faceshow/mine/view/CustomLabelActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$b;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const v0, 0x7f1207b4

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$b;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$b;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060111

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
