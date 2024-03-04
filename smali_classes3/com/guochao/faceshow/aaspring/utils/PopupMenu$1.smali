.class Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;Landroid/content/Context;ILjava/util/List;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0, p2, p3, p4}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;)V
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f0a0c6c

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->f(ILjava/lang/String;)Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    .line 3
    :cond_0
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;)V

    return-void
.end method
