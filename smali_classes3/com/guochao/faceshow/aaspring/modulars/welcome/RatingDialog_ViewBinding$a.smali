.class Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding$a;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding$a;->b:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog_ViewBinding$a;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
