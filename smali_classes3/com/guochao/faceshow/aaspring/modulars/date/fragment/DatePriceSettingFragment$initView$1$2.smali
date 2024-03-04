.class public final Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u001c\u0010\n\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;",
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
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->$list:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->access$getSaving$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->access$setCurrentSelectIndex$p(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;->getViewBinding()Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/guochao/faceshow/databinding/FragmentDatePriceSettingBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;I)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->$list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;->bind(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;)V

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;
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
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/databinding/ListItemDatePriceBinding;)V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$initView$1$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/d;

    invoke-direct {v1, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment;Lcom/guochao/faceshow/aaspring/modulars/date/fragment/DatePriceSettingFragment$DateItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
