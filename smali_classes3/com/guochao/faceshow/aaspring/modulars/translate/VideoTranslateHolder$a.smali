.class Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1201e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setMenus(Ljava/util/List;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setOnMenuItemClickListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;)V

    const v0, 0x3f4ccccd    # 0.8f

    .line 7
    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setAlpha(F)V

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;)V

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->b(Z)V

    .line 10
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/PopupMenu;->show(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
