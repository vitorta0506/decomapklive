.class Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->bgConfirm:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$d;->onNext(Ljava/lang/Integer;)V

    return-void
.end method
