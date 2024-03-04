.class public final Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->requestLocation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\tH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1",
        "Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;",
        "onError",
        "",
        "code",
        "",
        "msg",
        "",
        "lastFcLocation",
        "Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;",
        "onReceiveLocation",
        "fcLocation",
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
.field final synthetic $pageNo:I

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;->$pageNo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$LocationError;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "lastFcLocation"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;->$pageNo:I

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getLiveList(I)V

    return-void
.end method

.method public onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fcLocation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment$requestLocation$1$1;->$pageNo:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getLiveList(I)V

    return-void
.end method
