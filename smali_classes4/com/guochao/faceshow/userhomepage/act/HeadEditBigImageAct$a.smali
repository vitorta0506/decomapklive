.class Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct$a;
.super Lcom/guochao/faceshow/utils/ArequestCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;->m0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/utils/ArequestCallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct$a;->a:Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/utils/ArequestCallBack;-><init>(Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onSuccess(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->aresult:Lcom/guochao/faceshow/utils/AResult;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iget p1, p1, Lcom/guochao/faceshow/utils/AResult;->code:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct$a;->a:Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;

    iget-object v0, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->data:Ljava/lang/String;

    const-string/jumbo v1, "userHeadimg"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct$a;->a:Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;

    invoke-static {p1}, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;->l0(Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;)Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->Y1()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/ArequestCallBack;->data:Ljava/lang/String;

    invoke-static {p1, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
