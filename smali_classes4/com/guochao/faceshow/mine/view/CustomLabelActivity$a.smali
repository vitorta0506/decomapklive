.class Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/v$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->etTag:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/CustomLabelActivity$a;->a:Lcom/guochao/faceshow/mine/view/CustomLabelActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->etTag:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/mine/view/CustomLabelActivity;->b0(Lcom/guochao/faceshow/mine/view/CustomLabelActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
