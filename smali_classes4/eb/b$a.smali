.class Leb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Leb/b;


# direct methods
.method constructor <init>(Leb/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leb/b$a;->b:Leb/b;

    iput-object p2, p0, Leb/b$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Leb/b$a;->b:Leb/b;

    invoke-virtual {p1}, Leb/b;->A()V

    .line 2
    iget-object p1, p0, Leb/b$a;->a:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Leb/b$a;->b:Leb/b;

    invoke-static {v0}, Leb/b;->c(Leb/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Leb/b$a;->b:Leb/b;

    invoke-static {v0}, Leb/b;->c(Leb/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Label"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    iget-object v0, p0, Leb/b$a;->a:Landroid/content/Context;

    const v1, 0x7f1201e6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method
