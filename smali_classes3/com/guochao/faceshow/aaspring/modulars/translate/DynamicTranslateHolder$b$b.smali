.class Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/translate/DynamicTranslateHolder;->translateContent:Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TopicAndAtTextView;->a(Z)V

    return-void
.end method
