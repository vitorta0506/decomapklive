.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;-><init>(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;ILandroid/view/View;)V
    .locals 4

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v0, "Graffiti_gift_panel_3000"

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->access$getGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Graffiti_gift_panel_3000_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->getViewBinding()Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/guochao/faceshow/databinding/LayoutHandyGiftAreaBinding;->handyView:Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->access$getGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;->readTemplatePath(Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->access$getGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;I)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->access$getGiftPathData$p(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/model/HandyGiftPathData;->getIconId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;

    invoke-direct {v1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;
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
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->getFragment()Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;

    move-result-object p1

    const-string v0, "inflate(\n               \u2026lse\n                    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$GiftPathIconViewHolder;-><init>(Lcom/guochao/faceshow/databinding/ListItemHandyImageViewBinding;)V

    return-object p2
.end method
