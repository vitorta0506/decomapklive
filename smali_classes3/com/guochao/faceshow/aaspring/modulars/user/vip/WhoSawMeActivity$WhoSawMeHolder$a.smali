.class Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;-><init>(Landroid/view/ViewGroup;Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;->a:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;->a:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;->a:Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->bindData(Lcom/guochao/faceshow/aaspring/beans/WhoSawMeBean$ListBean$Bean;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserPhotoWhoSaw;->c:[Landroid/view/View;

    .line 6
    invoke-virtual {v0, p2, p1, p3, v1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->startZoom(Ljava/util/List;Landroid/view/View;I[Landroid/view/View;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper;->setOnFocusListener(Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;)V

    return-void
.end method
