.class Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/ObservableScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/ObservableScrollView;IIII)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->a:I

    const/16 p2, 0xa

    if-le p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->titleBar:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->P1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->titleBar:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment$a;->b:Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;->P1(Lcom/guochao/faceshow/mine/view/fragment/WithdrawalFragment;Z)Z

    :goto_0
    return-void
.end method
