.class public final Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;",
        "Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V",
        "convert",
        "",
        "holder",
        "item",
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
.field final synthetic this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;->this$0:Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment;

    const p1, 0x7f0d0218

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/LoadMoreModule$DefaultImpls;->addLoadMoreModule(Lcom/chad/library/adapter/base/module/LoadMoreModule;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$ActivityAdapter;->convert(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;)V

    return-void
.end method

.method protected convert(Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/activitycenter/fragment/ActivityCenterFragment$PeopleViewHolder;->getBinding()Lcom/guochao/faceshow/databinding/ItemActivityCenterBinding;

    move-result-object p1

    .line 4
    iget-object v0, p1, Lcom/guochao/faceshow/databinding/ItemActivityCenterBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;->getFileUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/g;

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ItemActivityCenterBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method
