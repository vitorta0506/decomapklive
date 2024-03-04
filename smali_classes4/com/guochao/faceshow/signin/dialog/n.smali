.class public final synthetic Lcom/guochao/faceshow/signin/dialog/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/PopupWindow;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/n;->a:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/dialog/n;->b:Landroid/view/View;

    iput p3, p0, Lcom/guochao/faceshow/signin/dialog/n;->c:I

    iput p4, p0, Lcom/guochao/faceshow/signin/dialog/n;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/n;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/dialog/n;->b:Landroid/view/View;

    iget v2, p0, Lcom/guochao/faceshow/signin/dialog/n;->c:I

    iget v3, p0, Lcom/guochao/faceshow/signin/dialog/n;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->U1(Landroid/widget/PopupWindow;Landroid/view/View;II)V

    return-void
.end method
