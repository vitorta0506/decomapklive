.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->et_code:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Z)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;Z)Z

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/RegisteredActivity;)V

    return-void
.end method
