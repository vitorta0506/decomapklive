.class public final synthetic Lcom/guochao/faceshow/signin/dialog/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/PopupWindow;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:I

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;Landroid/view/ViewGroup;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/o;->a:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/guochao/faceshow/signin/dialog/o;->b:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/guochao/faceshow/signin/dialog/o;->c:I

    iput p4, p0, Lcom/guochao/faceshow/signin/dialog/o;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/o;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/dialog/o;->b:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/guochao/faceshow/signin/dialog/o;->c:I

    iget v3, p0, Lcom/guochao/faceshow/signin/dialog/o;->d:F

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/signin/dialog/SignInDialog;->S1(Landroid/widget/PopupWindow;Landroid/view/ViewGroup;IF)V

    return-void
.end method
