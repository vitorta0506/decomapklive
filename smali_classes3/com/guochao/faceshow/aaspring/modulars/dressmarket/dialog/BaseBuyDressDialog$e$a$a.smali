.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->onClick(Landroid/app/Dialog;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->l:Z

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->U1()V

    .line 5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getLastPrice()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, p2}, Lp9/a;->C(IZ)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;-><init>()V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;->a:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result p2

    iput p2, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$d;->b:I

    .line 9
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    const v0, 0x7f1202bc

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e;->b:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BaseBuyDressDialog$e$a$a;->a(Ljava/lang/Integer;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
