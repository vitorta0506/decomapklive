.class Lcom/guochao/faceshow/views/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/p;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/p;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/p;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/p$b;->a:Lcom/guochao/faceshow/views/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/views/p$b;->a:Lcom/guochao/faceshow/views/p;

    invoke-static {p2}, Lcom/guochao/faceshow/views/p;->f(Lcom/guochao/faceshow/views/p;)Landroid/widget/EditText;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardNow(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
