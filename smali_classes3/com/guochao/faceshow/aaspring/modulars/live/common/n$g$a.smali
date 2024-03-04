.class Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

.field final synthetic b:I

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->liveId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget v0, v0, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->nickName:Ljava/lang/String;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->img:Ljava/lang/String;

    invoke-static {p1, v0, v1, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->c(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g;->b:Lcom/guochao/faceshow/aaspring/modulars/live/common/n;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->d(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->userId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->b:I

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/n$g$a;->a:Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;

    iget-object v4, p1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->nickName:Ljava/lang/String;

    iget-object v5, p1, Lcom/guochao/faceshow/aaspring/beans/LiveBanKickListItem;->img:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/n;->e(Lcom/guochao/faceshow/aaspring/modulars/live/common/n;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
