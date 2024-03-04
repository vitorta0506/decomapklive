.class final Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;-><init>(Landroid/view/ViewStub;Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
        "Ljava/util/List<",
        "+",
        "Landroid/graphics/PointF;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "handyAnimView",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
        "list",
        "",
        "Landroid/graphics/PointF;",
        "invoke"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$4;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$4;->invoke(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/view/HandyAnimView;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handyAnimView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "list"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper$4;->this$0:Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;->access$refreshGiftDiamondCount(Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/HandyGifViewHelper;)V

    return-void
.end method
