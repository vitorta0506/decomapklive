.class Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;
.super Ls0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/i<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ls0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f0136

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    .line 3
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lfa/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v2, 0x190

    .line 4
    invoke-static {v1, v2, v2, p1}, Lfa/a;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCode:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->S1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCodeDownload:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lfa/a;->b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v1, 0x190

    .line 4
    invoke-static {v0, v1, v1, p1}, Lfa/a;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->T1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCode:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->S1(Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->qCodeDownload:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog$a;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V

    return-void
.end method
