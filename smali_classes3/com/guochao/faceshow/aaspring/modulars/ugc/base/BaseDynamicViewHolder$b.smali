.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->showFloatMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getContent()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FaceCast"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
