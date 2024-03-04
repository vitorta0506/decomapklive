.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment;)Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveSoundFragment$b$a;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/manager/a;->l(Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/aaspring/manager/a$k;)V

    return-void
.end method
