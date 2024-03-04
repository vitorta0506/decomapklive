.class Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;


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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/VideoTranslateHolder;->tvExpandable:Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/ExpandableImageTextView;->b(Z)V

    return-void
.end method
