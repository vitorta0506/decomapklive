.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/RatingBar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    float-to-int p1, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f120319

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f120318

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f120317

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f120316

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/fragment/FeedbackScoreFragment;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f120315

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
