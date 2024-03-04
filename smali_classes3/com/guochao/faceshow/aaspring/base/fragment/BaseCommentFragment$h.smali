.class Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$h;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment$h;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseCommentFragment;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
