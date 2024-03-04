.class Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->getFullText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "FaceCast"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method
