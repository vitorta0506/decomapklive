.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f1201e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setMenus(Ljava/util/List;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setOnMenuItemClickListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->show(Landroid/view/View;)V

    :cond_0
    return v2
.end method
