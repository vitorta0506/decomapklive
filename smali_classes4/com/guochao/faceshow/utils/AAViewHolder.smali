.class public Lcom/guochao/faceshow/utils/AAViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mPosition:I

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mPosition:I

    .line 3
    new-instance p4, Landroid/util/SparseArray;

    invoke-direct {p4}, Landroid/util/SparseArray;-><init>()V

    iput-object p4, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mViews:Landroid/util/SparseArray;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mConvertView:Landroid/view/View;

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;IIZ)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/utils/AAViewHolder;

    .line 2
    iput p4, p1, Lcom/guochao/faceshow/utils/AAViewHolder;->mPosition:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/utils/AAViewHolder;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/guochao/faceshow/utils/AAViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-object p1

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Lcom/guochao/faceshow/utils/AAViewHolder;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/guochao/faceshow/utils/AAViewHolder;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-object p1
.end method


# virtual methods
.method public getBtn(I)Landroid/widget/Button;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1
.end method

.method public getCheckBox(I)Landroid/widget/CheckBox;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    return-object p1
.end method

.method public getConvertView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getImage(I)Landroid/widget/ImageView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public getLine(I)Landroid/widget/LinearLayout;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mPosition:I

    return v0
.end method

.method public getRela(I)Landroid/widget/RelativeLayout;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public getSwipeListLayout(I)Lcom/guochao/faceshow/views/SwipeListLayout;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/views/SwipeListLayout;

    return-object p1
.end method

.method public getTextView(I)Landroid/widget/TextView;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public getTextView(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/utils/AAViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setImgResourceId(II)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setRating(IF)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RatingBar;

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    return-object p0
.end method

.method public setSelectButton(ILjava/lang/String;Z)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTextColor(II)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setTextHtml(ILjava/lang/String;)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setVisiable(II)Lcom/guochao/faceshow/utils/AAViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/utils/AAViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method
