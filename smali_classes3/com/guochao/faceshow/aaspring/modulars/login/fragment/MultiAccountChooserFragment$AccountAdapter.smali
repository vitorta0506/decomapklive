.class final Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;",
        "(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$this_apply"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->access$setCurrentSelect$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;I)V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->access$getResult$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUserInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;->getViewBinding()Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    .line 3
    iget-object v2, v0, Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;->nickname:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->access$getResult$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUserInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, v0, Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;->selection:Landroid/widget/ImageView;

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;->access$getCurrentSelect$p(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;)I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 6
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;

    move-result-object p1

    const-string v0, "inflate(\n               \u2026, false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;-><init>(Lcom/guochao/faceshow/databinding/ListItemAccountChooserBinding;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;

    .line 8
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;

    invoke-direct {v1, p1, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountViewHolder;Lcom/guochao/faceshow/aaspring/modulars/login/fragment/MultiAccountChooserFragment$AccountAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
