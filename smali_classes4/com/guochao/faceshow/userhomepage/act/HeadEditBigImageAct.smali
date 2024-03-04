.class public Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;
.super Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;-><init>()V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;)Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->f:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    return-object p0
.end method


# virtual methods
.method protected d0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;->m0(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->f:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->Y1()Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method protected m0(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/utils/Ahttp;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->updateImg:Ljava/lang/String;

    const-string/jumbo v2, "userToken"

    .line 2
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/utils/Ahttp;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "userId"

    .line 3
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/utils/Ahttp;->addStrParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Ahttp;->hasFile()V

    const-string v1, "img"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/utils/Ahttp;->addFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct$a;

    invoke-direct {p1, p0, p0, v0}, Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct$a;-><init>(Lcom/guochao/faceshow/userhomepage/act/HeadEditBigImageAct;Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/Ahttp;->send(Lcom/guochao/faceshow/utils/ArequestCallBack;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "SHOW_MORE_ICON"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->k0()V

    :cond_1
    return-void
.end method
