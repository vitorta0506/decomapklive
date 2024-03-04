.class Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/ObservableScrollView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/views/ObservableScrollView;IIII)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result p1

    if-lt p3, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$c;->a:Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Z)V

    :goto_0
    return-void
.end method
