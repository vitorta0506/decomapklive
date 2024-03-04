.class Lcom/guochao/faceshow/web/WebViewActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/web/WebViewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/web/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/web/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$b;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/web/WebViewActivity$b;->a:Lcom/guochao/faceshow/web/WebViewActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/web/WebViewActivity;->onBackPressed()V

    return-void
.end method
