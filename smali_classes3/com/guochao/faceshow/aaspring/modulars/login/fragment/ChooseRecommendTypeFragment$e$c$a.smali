.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;

    iget v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;->a:I

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c$a;->a:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;->a:I

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;

    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$f;->b:I

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e$c;->c:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ChooseRecommendTypeFragment;->R1()V

    :cond_1
    return-void
.end method
