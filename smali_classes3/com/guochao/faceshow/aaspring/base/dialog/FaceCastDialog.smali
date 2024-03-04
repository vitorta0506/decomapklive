.class public Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;->a:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;->a:Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/utils/listener/OnBackButtonPressedHandler;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method
