.class Lwa/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

.field final synthetic b:Lwa/c$d;

.field final synthetic c:Lwa/c;


# direct methods
.method constructor <init>(Lwa/c;Lcom/guochao/faceshow/mine/model/WithdrawalBean;Lwa/c$d;)V
    .locals 0

    iput-object p1, p0, Lwa/c$a;->c:Lwa/c;

    iput-object p2, p0, Lwa/c$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    iput-object p3, p0, Lwa/c$a;->b:Lwa/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lwa/c$a;->c:Lwa/c;

    invoke-static {p1}, Lwa/c;->a(Lwa/c;)Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "userFB"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lwa/c$a;->a:Lcom/guochao/faceshow/mine/model/WithdrawalBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/WithdrawalBean;->getF()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lwa/c$a;->c:Lwa/c;

    invoke-static {p1}, Lwa/c;->a(Lwa/c;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;

    const-string v0, "payPassword"

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f1304b9

    if-eqz v1, :cond_0

    .line 6
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1206d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lwa/c$a$a;

    invoke-direct {v3, p0, p1}, Lwa/c$a$a;-><init>(Lwa/c$a;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1206d9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_0

    :cond_0
    const-string v1, "1"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/guochao/faceshow/views/n;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120800

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lwa/c$a$b;

    invoke-direct {v3, p0, p1}, Lwa/c$a$b;-><init>(Lwa/c$a;Lcom/guochao/faceshow/mine/view/WithdrawalDiamondActivity;)V

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/guochao/faceshow/views/n;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/n;->show()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lwa/c$a;->c:Lwa/c;

    invoke-static {p1}, Lwa/c;->a(Lwa/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lwa/c$a;->c:Lwa/c;

    invoke-static {v0}, Lwa/c;->a(Lwa/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_2
    :goto_0
    return-void
.end method
