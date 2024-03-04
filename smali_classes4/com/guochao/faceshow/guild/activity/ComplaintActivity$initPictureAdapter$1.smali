.class public final Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;
.super Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->initPictureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1",
        "Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
        "convert",
        "",
        "holder",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        "item",
        "position",
        "",
        "component_guild_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/guild/activity/ComplaintActivity;",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->convert$lambda-2(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/view/View;)V

    return-void
.end method

.method private static final convert$lambda-0(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;ILandroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->removePicture(I)V

    return-void
.end method

.method private static final convert$lambda-2(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;Landroid/view/View;)V
    .locals 2

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->isAddPicButton(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getSelectPictureList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 4
    sget p1, Lcom/guochao/faceshow/guild/R$string;->guild_upload_photo_size_tip:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getMAX_PICATURE()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->removeAddPicButton()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    const-string p2, "key2"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    const-string v0, "/app/simpleMediaActivity"

    invoke-direct {p2, p0, v0}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->withParams(Landroid/os/Bundle;)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->getPICTURE()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->requestCode(I)Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->convert$lambda-0(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity;->getViewModel()Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->isAddPicButton(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 3
    sget v0, Lcom/guochao/faceshow/guild/R$id;->delete_cover:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_5

    .line 4
    sget v0, Lcom/guochao/faceshow/guild/R$id;->cover:I

    sget v1, Lcom/guochao/faceshow/guild/R$mipmap;->add_image_icon:I

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageResource(II)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    sget v0, Lcom/guochao/faceshow/guild/R$id;->delete_cover:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    :cond_3
    const/4 v0, 0x0

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_5

    .line 6
    sget v1, Lcom/guochao/faceshow/guild/R$id;->cover:I

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "item.uri"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->setImageByUri(ILandroid/net/Uri;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 7
    sget v0, Lcom/guochao/faceshow/guild/R$id;->delete_cover:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    new-instance v2, Lcom/guochao/faceshow/guild/activity/z;

    invoke-direct {v2, v1, p3}, Lcom/guochao/faceshow/guild/activity/z;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object p3, p0, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->this$0:Lcom/guochao/faceshow/guild/activity/ComplaintActivity;

    new-instance v0, Lcom/guochao/faceshow/guild/activity/a0;

    invoke-direct {v0, p3, p2}, Lcom/guochao/faceshow/guild/activity/a0;-><init>(Lcom/guochao/faceshow/guild/activity/ComplaintActivity;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/guild/activity/ComplaintActivity$initPictureAdapter$1;->convert(Lcom/guochao/faceshow/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;I)V

    return-void
.end method
