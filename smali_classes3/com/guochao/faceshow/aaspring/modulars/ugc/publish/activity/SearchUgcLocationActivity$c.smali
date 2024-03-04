.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;

    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->mEditTextSearch:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchUgcLocationActivity;ILjava/lang/String;)V

    :goto_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
