.class Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;->a:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity;

    const p2, 0x7f0a05ee

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/WithdrawalDiamondActivity$a;->a:I

    const/16 p3, 0xa

    if-le p2, p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method
