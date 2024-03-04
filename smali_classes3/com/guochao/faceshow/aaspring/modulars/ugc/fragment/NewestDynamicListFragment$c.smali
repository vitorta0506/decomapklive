.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    return-void
.end method
