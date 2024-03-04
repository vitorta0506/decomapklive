.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->hideSoftKeyboard()V

    return-void
.end method
