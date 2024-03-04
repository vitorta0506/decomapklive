.class public final Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;
.super Lk9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecommendPlanetAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;",
        "Lk9/b;",
        "",
        "getCount",
        "Landroid/content/Context;",
        "context",
        "position",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/view/View;",
        "getView",
        "",
        "getItem",
        "getPopularity",
        "view",
        "themeColor",
        "",
        "onThemeColorChanged",
        "<init>",
        "(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-direct {p0}, Lk9/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getHomeUser()Ljava/util/List;

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

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getHomeUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPopularity(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gt p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity$RecommendPlanetAdapter;->this$0:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PlantActivity;->getMViews()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onThemeColorChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
