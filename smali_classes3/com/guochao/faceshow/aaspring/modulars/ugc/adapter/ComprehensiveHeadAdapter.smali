.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lz9/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->d:Lz9/a;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->b:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    if-gez p2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setImg(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserCountryFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setCountryLogo(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserSex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserSex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->setSex(I)V

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp7/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 8
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;->tvNickName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getUserNickName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->c:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0227

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->a(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->d:Lz9/a;

    const-string v2, "item"

    invoke-interface {v1, p1, v2, v0}, Lz9/a;->b(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->b(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemClickListener(Lz9/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveHeadAdapter;->d:Lz9/a;

    return-void
.end method
