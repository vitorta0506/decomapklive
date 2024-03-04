.class public final Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;ILandroid/view/View;)V
    .locals 6

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->getShareList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getSharePlatformName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Copy;->NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/content/ClipboardManager;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->getMShareContentBean()Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->getShortUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Label"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f1201e6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "context!!.getString(R.string.copy_link_succ)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->getMShareContentBean()Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->getShareList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a0a68

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->getShareList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0a6a

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;->getShareList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;->getDiplayNameId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0df4

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_1

    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;

    invoke-direct {v1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
