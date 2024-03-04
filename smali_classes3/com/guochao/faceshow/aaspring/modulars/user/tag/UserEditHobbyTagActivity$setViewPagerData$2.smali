.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->setViewPagerData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2",
        "Landroidx/fragment/app/FragmentPagerAdapter;",
        "getCount",
        "",
        "getItem",
        "Landroidx/fragment/app/Fragment;",
        "position",
        "getPageTitle",
        "",
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
.field final synthetic $hobbies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;Ljava/util/List;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;->$hobbies:Ljava/util/List;

    invoke-direct {p0, p3}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->getMFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;->$hobbies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->getTypeName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
