.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->deleteEdit:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->deleteEdit:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;->l0()V

    return-void
.end method
