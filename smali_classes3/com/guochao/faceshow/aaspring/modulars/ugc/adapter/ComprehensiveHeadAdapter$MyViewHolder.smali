.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

.field avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
