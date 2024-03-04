.class Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/RatingBar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->tvConfirm:Landroid/widget/TextView;

    const v0, 0x7f12081c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->tvConfirm:Landroid/widget/TextView;

    const v0, 0x7f120762

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->tvConfirm:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
