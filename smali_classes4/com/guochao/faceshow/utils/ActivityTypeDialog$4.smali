.class Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/ActivityTypeDialog;->getPrizeDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/app/Dialog;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$alertDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/web/WebViewActivity;->createBuilder()Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->m(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->g(Z)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$url:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->k(Ljava/lang/String;)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$context:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/ActivityTypeDialog$4;->val$alertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
