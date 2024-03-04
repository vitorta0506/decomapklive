.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->f(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    const v0, 0x7f0800d9

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity$d;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->setOnClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;)V

    return-object p2
.end method
