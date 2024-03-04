.class Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/WhoSawMeZoomHelper$OnFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->a(Landroid/view/View;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;->f(Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity$WhoSawMeHolder$c;->a(I)V

    :cond_0
    return-void
.end method
