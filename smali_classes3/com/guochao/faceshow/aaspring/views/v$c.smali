.class Lcom/guochao/faceshow/aaspring/views/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/v;->c(Landroid/view/Menu;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/v;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/v;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/v$c;->a:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v$c;->a:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/v;->b(Lcom/guochao/faceshow/aaspring/views/v;)Lcom/guochao/faceshow/aaspring/views/v$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/v$c;->a:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/v;->b(Lcom/guochao/faceshow/aaspring/views/v;)Lcom/guochao/faceshow/aaspring/views/v$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/v$d;->onSecondIconClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
