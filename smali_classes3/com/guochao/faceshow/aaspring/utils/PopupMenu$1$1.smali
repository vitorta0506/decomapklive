.class Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;

.field final synthetic val$holder:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;->val$holder:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->access$000(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;->val$holder:Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->access$100(Lcom/guochao/faceshow/aaspring/utils/PopupMenu;)Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1$1;->this$1:Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/utils/PopupMenu$1;->val$popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
