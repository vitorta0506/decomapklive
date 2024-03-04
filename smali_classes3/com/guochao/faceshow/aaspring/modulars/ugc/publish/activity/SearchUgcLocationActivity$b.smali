.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;ILjava/lang/String;)V

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
