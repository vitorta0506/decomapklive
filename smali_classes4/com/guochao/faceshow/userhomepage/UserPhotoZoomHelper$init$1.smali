.class public final Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator$OnItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/userhomepage/UserPhotoZoomHelper$init$1",
        "Lcom/guochao/faceshow/userhomepage/PhotoWallIndicator$OnItemSelectListener;",
        "onSelect",
        "",
        "position",
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
.field final synthetic this$0:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper$init$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper$init$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;->access$getMViewPager$p$s1727946184(Lcom/guochao/faceshow/userhomepage/UserPhotoZoomHelper;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_0
    return-void
.end method
